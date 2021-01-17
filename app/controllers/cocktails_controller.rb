class CocktailsController < ApplicationController
  before_action :cocktail_all, only: %i[home index]
  def home
    @cocktails_sample = @cocktails.sample(4)
  end

  def index; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def cocktail_all
    @cocktails = Cocktail.all
  end
end
