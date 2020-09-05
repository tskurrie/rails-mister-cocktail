class DosesController < ApplicationController
    def new
      @dose = Dose.new
    end

    def create
      @dose = Dose.new(dose_params)
      # we need `restaurant_id` to associate review with corresponding restaurant
      @cocktail = Cocktail.find(params[:cocktail_id])
      @ingredient = Ingredient.find(params[:dose][:ingredient])
      @dose.cocktail = @cocktail
      @dose.ingredient = @ingredient
      @dose.save
      redirect_to cocktail_path(@cocktail)
    end

    private

    def dose_params
      params.require(:dose).permit(:description)
    end
    
end
