class CocktailsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @cocktail = Cocktail.new
    authorize @cocktail
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = current_user
    authorize @cocktail
    if @cocktail.valid?
      @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def index
    @cocktails = Cocktail.all
    @cocktails = policy_scope(Cocktail)
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    authorize @cocktail
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
    authorize @cocktail
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    authorize @cocktail
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
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
