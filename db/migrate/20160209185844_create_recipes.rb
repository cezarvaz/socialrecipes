class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :type
      t.string :preference
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
