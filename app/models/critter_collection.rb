class CritterCollection < ApplicationRecord
    belongs_to :critter
    belongs_to :collection
end