class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktail

  validates :name, presence: true, uniqueness: true
end
