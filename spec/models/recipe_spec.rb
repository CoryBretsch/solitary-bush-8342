require "rails_helper"

RSpec.describe Recipe, type: :model do
   
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :complexity}
    it {should validate_presence_of :genre}
  end

  describe "relationships" do
    it {should have_many :recipe_ingredients}
    it {should have_many(:ingredients).through(:recipe_ingredients)}
  end

  # describe "calculations" do
  #   it "can calculate total cost" do

  #     oil = Ingredient.create!(name: "oil", cost: 2)
  #     garlic = Ingredient.create!(name: "garlic", cost: 1)
  #     garlic_oil = Recipe.create(name: "garlic oil", complexity: 5, genre: "dip")
  #     RecipeIngredient.create!(recipe: garlic_oil, ingredient: oil)
  #     RecipeIngredient.create!(recipe: garlic_oil, ingredient: garlic)

  #     sum = self.total_cost(garlic_oil)
  #     expect(sum).to eq(3)
  #   end
  # end
end