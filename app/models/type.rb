class Type < ActiveRecord::Base
    has_many :critters

    validates :name, uniqueness: true

end