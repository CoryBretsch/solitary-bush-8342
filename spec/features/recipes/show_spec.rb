require 'rails_helper'

RSpec.describe "the recipes show page" do
  it "should display recipe's name, complexity, genre, and list ingredient names" do
    
    oil = Ingredient.create!(name: "oil", cost: 2)
    garlic = Ingredient.create!(name: "garlic", cost: 1)
    garlic_oil = Recipe.create(name: "garlic oil", complexity: 5, genre: "dip")
    RecipeIngredient.create!(recipe: garlic_oil, ingredient: oil)
    RecipeIngredient.create!(recipe: garlic_oil, ingredient: garlic)

    visit "/recipes/#{garlic_oil.id}"

    expect(page).to have_content(garlic_oil.name)
    expect(page).to have_content(garlic_oil.complexity)
    expect(page).to have_content(garlic_oil.genre)
    expect(page).to have_content(garlic.name)
    expect(page).to have_content(oil.name)

    expect(page).to have_content(3)
  end
end