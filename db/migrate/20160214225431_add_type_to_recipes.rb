class AddTypeToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :type, index: true, foreign_key: true
  end
end
