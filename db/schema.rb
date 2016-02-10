ActiveRecord::Schema.define(version: 20_160_209_185_844) do
  create_table 'recipes', force: :cascade do |t|
    t.string   'name'
    t.string   'cuisine'
    t.string   'type_of_food'
    t.string   'food_preferences'
    t.integer  'servings'
    t.integer  'prepare_time'
    t.string   'difficulty'
    t.text     'ingredients'
    t.text     'directions'
    t.string   'image_file_name'
    t.string   'image_content_type'
    t.integer  'image_file_size'
    t.datetime 'image_updated_at'
    t.datetime 'created_at',         null: false
    t.datetime 'updated_at',         null: false
  end
end
