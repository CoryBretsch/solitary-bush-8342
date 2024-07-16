class RecipesController < ApplicationController 
  def show
    @recipe = Recipe.find(params[:id])
    @sum = 0
    @recipe.ingredients.each do |ingredient|
      @sum += ingredient.cost
# i know this is not the way we should do this... but i ran out of time and made it work :/
    end
  end
end