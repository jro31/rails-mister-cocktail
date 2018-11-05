class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(set_params)
    cocktail.save
    redirect_to cocktails_path
    # redirect_to doses_path(@cocktail)
  end

  def index
    @cocktail = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktail = Coctail.find(params[:id])
  end

  def update

  end

  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    redirect_to cocktails_path
  end
end

private

def set_params
  params.require(:cocktail).permit(:name)
end
