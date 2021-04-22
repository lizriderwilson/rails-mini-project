require 'httparty'

class Api
    URL = "https://acnhapi.com/v1a/"

    def self.get_critters(type_slug)
        critters = HTTParty.get("#{URL}#{type_slug}")
    end

end