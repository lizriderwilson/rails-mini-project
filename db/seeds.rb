# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(name: "Fish", slug: "fish")
Type.create(name: "Bugs", slug: "bugs")
Type.create(name: "Sea Creatures", slug: "sea")

Type.all.each do |type|
    critter_results = Api.get_critters(type.slug)
    critter_results.each do |result|
        Critter.create_from_result(result, type.id)
    end
end

Collection.create(name: "Caught")
Collection.create(name: "To catch next")

Collection.first.critters.push(Critter.find(1))
Collection.first.critters.push(Critter.find(50))
Collection.first.critters.push(Critter.find(100))
Collection.first.critters.push(Critter.find(150))
Collection.first.critters.push(Critter.find(200))