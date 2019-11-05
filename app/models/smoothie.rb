class Smoothie < ApplicationRecord
    has_many :ingredients
    add_foreign_key :ingredients, :smoothies
end
