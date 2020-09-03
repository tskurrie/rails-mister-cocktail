class Ingredient < ApplicationRecord
    has_many :doses
    has_many :cocktail, through: :doses

end
