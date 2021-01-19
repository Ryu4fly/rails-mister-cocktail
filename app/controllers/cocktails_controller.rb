class CocktailsController < ApplicationController
  before_action :cocktail_all, only: %i[home index]
  def home
    @cocktails_sample = @cocktails.sample(4)
  end

  def index
    @search = params["search"]
    if @search.present?
      @name = @search["name"].capitalize
      @cocktails = Cocktail.where("name ILIKE ?", "%#{@name}%")
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to new_cocktail_dose_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def cocktail_all
    @cocktails = Cocktail.all
  end
end
