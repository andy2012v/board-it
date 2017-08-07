class Exercise < ApplicationRecord


  validates :difficulty, presence: true
  validates :description, presence: true
  validates :solution, presence: true
  validates :date, presence: true

  belongs_to :language
end
