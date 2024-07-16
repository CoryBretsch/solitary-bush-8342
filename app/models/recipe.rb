class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  validates :name, :complexity, :genre, presence: true

  # def total_cost(recipe)
  #   ingredient_cost_array = []
  #   recipe.ingredients.each do |ingredient|
  #     ingredient_cost_array << ingredient.cost
  #   end
  #   ingredient_cost_array.sum.flatten
  # end.

end
