require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully with all data' do
    cuisine = build(:cuisine)

    visit new_cuisine_path

    fill_in 'cuisine[name]', with: cuisine.name

    click_on 'Salvar cozinha'

    expect(page).to have_content(cuisine.name)
  end
end
