class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  # CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  # validates :category, inclusion: { in: Restaurant::CATEGORY }
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
  message: "%{value} is not a valid size" }
end
