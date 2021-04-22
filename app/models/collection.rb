class Collection < ApplicationRecord
    has_many :critter_collections
    has_many :critters, through: :critter_collections

    validates :name, uniqueness: true
end
