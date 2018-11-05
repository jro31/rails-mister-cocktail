class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.valid?
      @dose.save
      redirect_to cocktail_path(@dose[:cocktail_id])
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:cocktail_id])
    raise
    @dose.destroy
    redirect_to cocktail_path(@dose[:cocktail_id])
  end
end

private

def dose_params
  params.require(:dose).permit(:description, :ingredient_id)
end
