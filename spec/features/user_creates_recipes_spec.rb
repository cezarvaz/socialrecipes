require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully' do
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'name', with: recipe.name
    fill_in 'cuisine', with: recipe.cuisine
    fill_in 'type_of_food', with: recipe.type_of_food
    fill_in 'food_preferences', with: recipe.food_preferences
    fill_in 'servings', with: recipe.servings
    fill_in 'prepare_time', with: recipe.prepare_time
    fill_in 'difficulty', with: recipe.difficulty
    fill_in 'ingredients', with: recipe.ingredients
    fill_in 'directions', with: recipe.directions
    attach_file('image', 'spec/images/receita-de-frango-ao-curry.jpg')
    # attach_file "File", "spec/images/receita-de-frango-ao-curry.jpg"

    click_on 'Salvar receita'

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine)
    expect(page).to have_content(recipe.type_of_food)
    expect(page).to have_content(recipe.food_preferences)
    expect(page).to have_content(recipe.servings)
    expect(page).to have_content(recipe.prepare_time)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.directions)
    expect(page).to have_xpath("//img[contains(@src,#{recipe.image.url})]")
  end
end
