require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully with all data' do
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    select recipe.cuisine.name, from: 'recipe[cuisine_id]'
    select recipe.type.name, from: 'recipe[type_id]'
    select recipe.preference.name, from: 'recipe[preference_id]'
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    select recipe.difficulty, from: 'recipe[difficulty]'
    fill_in 'recipe[ingredients]', with: recipe.ingredients
    fill_in 'recipe[directions]', with: recipe.directions
    attach_file 'recipe[image]', 'spec/images/receita-de-frango-ao-curry.jpg'

    click_on 'Salvar receita'

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.type.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.servings)
    expect(page).to have_content(recipe.prepare_time)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.directions)
    expect(page).to have_xpath("//img[contains(@src,'receita-de-frango-ao-curry.jpg')]")
  end

  scenario 'successfully without image' do
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    select recipe.cuisine.name, from: 'recipe[cuisine_id]'
    select recipe.type.name, from: 'recipe[type_id]'
    select recipe.preference.name, from: 'recipe[preference_id]'
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    select recipe.difficulty, from: 'recipe[difficulty]'
    fill_in 'recipe[ingredients]', with: recipe.ingredients
    fill_in 'recipe[directions]', with: recipe.directions

    click_on 'Salvar receita'

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.type.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.servings)
    expect(page).to have_content(recipe.prepare_time)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.directions)
    expect(page)
      .not_to have_xpath("//img[contains(@src,'#{recipe.image.url}')]")
  end

  scenario 'unsuccessfully' do
    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'recipe[name]', with: recipe.name
    select recipe.cuisine.name, from: 'recipe[cuisine_id]'
    select recipe.type.name, from: 'recipe[type_id]'
    select recipe.preference.name, from: 'recipe[preference_id]'
    fill_in 'recipe[servings]', with: recipe.servings
    fill_in 'recipe[prepare_time]', with: recipe.prepare_time
    select recipe.difficulty, from: 'recipe[difficulty]'
    fill_in 'recipe[directions]', with: recipe.directions

    click_on 'Salvar receita'

    expect(page).to have_content 'can\'t be blank'
    expect(current_path).to eq recipes_path
  end
end
