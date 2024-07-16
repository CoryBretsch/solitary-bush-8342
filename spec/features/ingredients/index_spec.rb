require 'rails_helper'

RSpec.describe "the ingredients index page" do
  it "should display all ingredients with attributes" do
    oil = Ingredient.create!(name: "oil", cost: 2)
    garlic = Ingredient.create!(name: "garlic", cost: 1)

    visit "/ingredients"

    expect(page).to have_content(oil.name)
    expect(page).to have_content(garlic.name)
    expect(page).to have_content(oil.cost)
    expect(page).to have_content(garlic.cost)
  end
end