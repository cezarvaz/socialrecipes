class Recipe < ActiveRecord::Base
  validates :name, :cuisine, :type_of_food, :food_preferences,
            :ingredients, :directions, presence: true
  has_attached_file :image, styles: { medium: '300x300>',
                                      thumb: '100x100>' },
                            path: ':rails_root/public/images/recipes/:id-:basename-:style.:extension',
                            url: '/images/recipes/:basename-:style.:extension'
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
end
