class Cocktail < ApplicationRecord
  belongs_to :user
  has_many :doses, dependent: :destroy # @cocktail.doses
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
