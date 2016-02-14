require 'rails_helper'

feature 'Visualize a new recipe' do
  scenario 'successfully' do
    recipe = create(:recipe)

    visit root_path

    expect(page).to have_content('Tipo')
    expect(page).to have_content('Preferência')
    expect(page).to have_content('Cozinha')
    expect(page).to have_content('Últimas Receitas')
    expect(page).to have_content('Favoritas dos Usuários')
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.type_of_food)
    expect(page).to have_content(recipe.food_preferences)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_xpath("//img[contains(@src,'#{recipe.image.url}')]")
  end
end
