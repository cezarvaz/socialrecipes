class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :type_of_food
      t.string :food_preferences
      t.integer :servings
      t.integer :prepare_time
      t.string :difficulty
      t.text :ingredients
      t.text :directions
      t.attachment :image

      t.timestamps null: false
    end
  end
end
