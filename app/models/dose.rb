class Dose < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
