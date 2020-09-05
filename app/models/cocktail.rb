class Cocktail < ApplicationRecord
    attr_accessor :add

    has_many :doses
    has_many :ingredients, through: :doses

    accepts_nested_attributes_for :doses
    accepts_nested_attributes_for :ingredients

end
