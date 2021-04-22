class CreateCrittersCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :critters_collections do |t|

      t.timestamps
    end
  end
end
