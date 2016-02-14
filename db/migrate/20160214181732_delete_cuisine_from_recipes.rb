class DeleteCuisineFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :cuisine
  end
end
