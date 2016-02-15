require 'rails_helper'

feature 'Visualize the 20 last recipes' do
  scenario 'successfully' do
    recipe = create(:recipe)
    recipe1 = create(:recipe, name: 'Frango ao Curry-1')
    recipe3 = create(:recipe, name: 'Frango ao Curry-2')
    recipe4 = create(:recipe, name: 'Frango ao Curry-3')
    recipe5 = create(:recipe, name: 'Frango ao Curry-4')
    recipe6 = create(:recipe, name: 'Frango ao Curry-5')
    recipe7 = create(:recipe, name: 'Frango ao Curry-6')
    recipe8 = create(:recipe, name: 'Frango ao Curry-7')
    recipe9 = create(:recipe, name: 'Frango ao Curry-8')
    recipe10 = create(:recipe, name: 'Frango ao Curry-9')
    recipe11 = create(:recipe, name: 'Frango ao Curry-10')
    recipe12 = create(:recipe, name: 'Frango ao Curry-11')
    recipe13 = create(:recipe, name: 'Frango ao Curry-12')
    recipe14 = create(:recipe, name: 'Frango ao Curry-13')
    recipe15 = create(:recipe, name: 'Frango ao Curry-14')
    recipe16 = create(:recipe, name: 'Frango ao Curry-15')
    recipe17 = create(:recipe, name: 'Frango ao Curry-16')
    recipe18 = create(:recipe, name: 'Frango ao Curry-17')
    recipe19 = create(:recipe, name: 'Frango ao Curry-18')
    recipe20 = create(:recipe, name: 'Frango ao Curry-19')

    visit root_path

    expect(page).to have_content(recipe.name)
    expect(page).to have_content('Frango ao Curry-1')
    expect(page).to have_content('Frango ao Curry-2')
    expect(page).to have_content('Frango ao Curry-3')
    expect(page).to have_content('Frango ao Curry-4')
    expect(page).to have_content('Frango ao Curry-5')
    expect(page).to have_content('Frango ao Curry-6')
    expect(page).to have_content('Frango ao Curry-7')
    expect(page).to have_content('Frango ao Curry-8')
    expect(page).to have_content('Frango ao Curry-9')
    expect(page).to have_content('Frango ao Curry-10')
    expect(page).to have_content('Frango ao Curry-11')
    expect(page).to have_content('Frango ao Curry-12')
    expect(page).to have_content('Frango ao Curry-13')
    expect(page).to have_content('Frango ao Curry-14')
    expect(page).to have_content('Frango ao Curry-15')
    expect(page).to have_content('Frango ao Curry-16')
    expect(page).to have_content('Frango ao Curry-17')
    expect(page).to have_content('Frango ao Curry-18')
    expect(page).to have_content('Frango ao Curry-19')
  end

  scenario 'unsuccessfully' do
    recipe = create(:recipe)
    recipe1 = create(:recipe, name: 'Frango ao Curry-1')
    recipe3 = create(:recipe, name: 'Frango ao Curry-2')
    recipe4 = create(:recipe, name: 'Frango ao Curry-3')
    recipe5 = create(:recipe, name: 'Frango ao Curry-4')
    recipe6 = create(:recipe, name: 'Frango ao Curry-5')
    recipe7 = create(:recipe, name: 'Frango ao Curry-6')
    recipe8 = create(:recipe, name: 'Frango ao Curry-7')
    recipe9 = create(:recipe, name: 'Frango ao Curry-8')
    recipe10 = create(:recipe, name: 'Frango ao Curry-9')
    recipe11 = create(:recipe, name: 'Frango ao Curry-10')
    recipe12 = create(:recipe, name: 'Frango ao Curry-11')
    recipe13 = create(:recipe, name: 'Frango ao Curry-12')
    recipe14 = create(:recipe, name: 'Frango ao Curry-13')
    recipe15 = create(:recipe, name: 'Frango ao Curry-14')
    recipe16 = create(:recipe, name: 'Frango ao Curry-15')
    recipe17 = create(:recipe, name: 'Frango ao Curry-16')
    recipe18 = create(:recipe, name: 'Frango ao Curry-17')
    recipe19 = create(:recipe, name: 'Frango ao Curry-18')
    recipe20 = create(:recipe, name: 'Frango ao Curry-19')
    recipe21 = create(:recipe, name: 'Frango ao Curry-20')

    visit root_path

    expect(page).not_to have_content(recipe.name)
    expect(page).to have_content('Frango ao Curry-1')
    expect(page).to have_content('Frango ao Curry-2')
    expect(page).to have_content('Frango ao Curry-3')
    expect(page).to have_content('Frango ao Curry-4')
    expect(page).to have_content('Frango ao Curry-5')
    expect(page).to have_content('Frango ao Curry-6')
    expect(page).to have_content('Frango ao Curry-7')
    expect(page).to have_content('Frango ao Curry-8')
    expect(page).to have_content('Frango ao Curry-9')
    expect(page).to have_content('Frango ao Curry-10')
    expect(page).to have_content('Frango ao Curry-11')
    expect(page).to have_content('Frango ao Curry-12')
    expect(page).to have_content('Frango ao Curry-13')
    expect(page).to have_content('Frango ao Curry-14')
    expect(page).to have_content('Frango ao Curry-15')
    expect(page).to have_content('Frango ao Curry-16')
    expect(page).to have_content('Frango ao Curry-17')
    expect(page).to have_content('Frango ao Curry-18')
    expect(page).to have_content('Frango ao Curry-19')
    expect(page).to have_content('Frango ao Curry-20')
  end
end

# twenty_recipes = create_list(:recipe, 20)

# factory :recipe do
#   sequence(:name) { |n| "Frango ao Curry-#{n}" }
# end
