class CocktailsController < ApplicationController
  def home; end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_param)

    if @cocktail.save
      redirect to cocktails_path
    else
      render :new
    end
  end

  def show
    @cocktail = Coctail.find(:id)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
