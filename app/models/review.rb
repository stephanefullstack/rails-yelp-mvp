class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5), message: "%{value} is not a valid size"}, numericality: { only_integer: true }
end
