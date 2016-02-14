require 'rails_helper'

feature 'Create a new type of food' do
  scenario 'successfully' do
    type = build(:type)

    visit new_type_path

    fill_in 'type[name]', with: type.name

    click_on 'Salvar tipo de comida'

    expect(page).to have_content(type.name)
  end

  scenario 'unsuccessfully' do
    build(:type)

    visit new_type_path

    click_on 'Salvar tipo de comida'

    expect(page).to have_content 'can\'t be blank'
    expect(current_path).to eq types_path
  end
end
