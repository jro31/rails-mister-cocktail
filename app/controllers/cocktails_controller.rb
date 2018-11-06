class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.valid?
      @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    cocktail = Cocktail.find(params[:id])
    cocktail.update(set_params)
    redirect_to cocktail_path(cocktail)
  end

  def destroy
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    redirect_to cocktails_path
  end
end

private

def cocktail_params
  params.require(:cocktail).permit(:name, :picture)
end
