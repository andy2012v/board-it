class Language < ApplicationRecord

  validates :name, presence: true
  validates :image_url_1, presence: true
  validates :image_url_2, presence: true
  validates :image_url_3, presence: true

  
  has_many :exercises
end
