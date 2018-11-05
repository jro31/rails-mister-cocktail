class DosesController < ApplicationController
  def index
    @doses = Dose.all
    raise
  end

  def destroy
    # Remove a dose from a cocktail
  end
end
