# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

garlic_oil = Recipe.create!(name: "garlic oil", complexity: 5, genre: "dip")
oil = Ingredient.create!(name: "oil", cost: 2)
garlic = Ingredient.create!(name: "garlic", cost: 1)

RecipeIngredient.create!(recipe: garlic_oil, ingredient: oil)
RecipeIngredient.create!(recipe: garlic_oil, ingredient: garlic)