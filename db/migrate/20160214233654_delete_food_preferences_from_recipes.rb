class DeleteFoodPreferencesFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :preference
  end
end
