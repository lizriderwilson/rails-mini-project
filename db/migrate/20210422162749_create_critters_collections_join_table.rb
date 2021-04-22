class CreateCrittersCollectionsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :critters, :collections
  end
end
