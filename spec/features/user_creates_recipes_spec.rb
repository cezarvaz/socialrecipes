require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully with all data' do
    cuisine = build(:cuisine)
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    fill_in 'recipe[cuisine]', with: recipe.cuisine
    fill_in 'recipe[type_of_food]', with: recipe.type_of_food
    fill_in 'recipe[food_preferences]', with: recipe.food_preferences
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    fill_in 'recipe[difficulty]', with: recipe.difficulty
    fill_in 'recipe[ingredients]', with: recipe.ingredients
    fill_in 'recipe[directions]', with: recipe.directions
    attach_file 'recipe[image]', 'spec/images/receita-de-frango-ao-curry.jpg'

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
    expect(page).to have_xpath("//img[contains(@src,'receita-de-frango-ao-curry.jpg')]")
  end

  scenario 'successfully without image' do
    cuisine = build(:cuisine)
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    fill_in 'recipe[cuisine]', with: recipe.cuisine
    fill_in 'recipe[type_of_food]', with: recipe.type_of_food
    fill_in 'recipe[food_preferences]', with: recipe.food_preferences
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    fill_in 'recipe[difficulty]', with: recipe.difficulty
    fill_in 'recipe[ingredients]', with: recipe.ingredients
    fill_in 'recipe[directions]', with: recipe.directions

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
    expect(page)
      .not_to have_xpath("//img[contains(@src,'#{recipe.image.url}')]")
  end

  scenario 'unsuccessfully' do
    cuisine = build(:cuisine)
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    fill_in 'recipe[cuisine]', with: recipe.cuisine
    fill_in 'recipe[type_of_food]', with: recipe.type_of_food
    fill_in 'recipe[food_preferences]', with: recipe.food_preferences
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    fill_in 'recipe[difficulty]', with: recipe.difficulty
    fill_in 'recipe[directions]', with: recipe.directions

    click_on 'Salvar receita'

    expect(page).to have_content 'can\'t be blank'
    expect(current_path).to eq recipes_path
  end
end
