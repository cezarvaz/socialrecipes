class Recipe < ActiveRecord::Base
  validates :name, :cuisine_id, :type_id, :preference,
            :ingredients, :directions, presence: true
  has_attached_file :image, styles: { medium: '300x300>',
                                      thumb: '100x100>' },
                            default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
  belongs_to :cuisine
  belongs_to :type
  belongs_to :preference
  validates :difficulty, inclusion: { in: Difficulty::DIFFICULTIES,
                                      message: '%{value} não é um valor válido' }
end
