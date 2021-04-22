class Critter < ActiveRecord::Base
    belongs_to :type
    has_and_belongs_to_many :collections

    def self.create_from_result(result, type_id)
        Critter.create(
            name: result["name"]["name-USen"],
            location: type_id == 3 ? "sea" : result["availability"]["location"],
            rarity: result["availability"]["rarity"],
            icon_uri: result["icon_uri"],
            type_id: type_id
        )
    end

end