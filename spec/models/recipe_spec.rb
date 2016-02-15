require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'difficulty validation' do
    it 'successfully' do
      recipe = build(:recipe, difficulty: 'Fácil')
      expect(recipe).to be_valid
    end

    it 'unsuccessfully' do
      recipe = build(:recipe, difficulty: 'Moleza')
      expect(recipe).to_not be_valid
      expect(recipe.errors).to include :difficulty
    end
  end
end
