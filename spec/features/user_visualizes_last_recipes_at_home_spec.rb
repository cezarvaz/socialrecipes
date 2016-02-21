require 'rails_helper'

feature 'Visualize the 20 last recipes' do
  scenario 'successfully' do
    old_recipe = create(:recipe)
    recipes = create_list(:recipe, 20)

    visit root_path

    # expect(page).to_not have_content(old_recipe.name)

    within('section#last_recipes') do
      for i in 1..20
        expect(page).to have_link "Frango ao curry #{i}"
      end
    end
  end
end
