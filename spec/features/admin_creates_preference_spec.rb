require 'rails_helper'

feature 'Create a new preference of food' do
  scenario 'successfully' do
    preference = build(:preference)

    visit new_preference_path

    fill_in 'preference[name]', with: preference.name

    click_on 'Salvar preferência'

    expect(page).to have_content(preference.name)
  end

  scenario 'unsuccessfully' do
    build(:preference)

    visit new_preference_path

    click_on 'Salvar preferência'

    expect(page).to have_content 'can\'t be blank'
    expect(current_path).to eq preferences_path
  end
end
