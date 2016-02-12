require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully with all data' do
    recipe = create(:recipe)

    visit root_path

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine)
    expect(page).to have_content(recipe.type_of_food)
    expect(page).to have_content(recipe.food_preferences)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_xpath("//img[contains(@src,'#{recipe.image.url}')]")
  end
end
