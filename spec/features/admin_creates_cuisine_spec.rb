require 'rails_helper'

feature 'Create a new recipe' do
  scenario 'successfully' do
    cuisine = build(:cuisine)

    visit new_cuisine_path

    fill_in 'cuisine[name]', with: cuisine.name

    click_on 'Salvar cozinha'

    expect(page).to have_content(cuisine.name)
  end

  scenario 'unsuccessfully' do
    build(:cuisine)

    visit new_cuisine_path

    click_on 'Salvar cozinha'

    expect(page).to have_content 'can\'t be blank'
    expect(current_path).to eq cuisines_path
  end
end
