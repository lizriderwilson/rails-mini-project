class CreateCritterCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :critter_collections do |t|
      t.integer :critter_id
      t.integer :collection_id
    end
  end
end
