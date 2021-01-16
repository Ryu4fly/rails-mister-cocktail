class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    @cocktail =
  end

  def delete

  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
