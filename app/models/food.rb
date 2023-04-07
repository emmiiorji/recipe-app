class Food < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods
  has_many :recipes, through: :recipe_foods
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
