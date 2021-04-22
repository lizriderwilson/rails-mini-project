class CreateCritters < ActiveRecord::Migration[6.1]
  def change
    create_table :critters do |t|
      t.string :name
      t.string :location
      t.string :rarity
      t.string :icon_uri
      t.integer :type_id
      t.timestamps
    end
  end
end
