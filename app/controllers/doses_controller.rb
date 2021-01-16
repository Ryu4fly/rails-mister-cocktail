class DosesController < ApplicationController
  before_action :find_cocktail, except: [:destroy]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @ingredient = Ingredient.all.filter { |ingredient| ingredient[:id] == params[:ingredient_id] }
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient[0]
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def delete
    @dose = Dose.find(params[:id])

    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
