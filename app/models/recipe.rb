class Recipe < ActiveRecord::Base
  validates :name, :cuisine, :type_of_food, :food_preferences,
            :ingredients, :directions, presence: true
end
