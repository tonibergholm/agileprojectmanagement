class CreateEntities < ActiveRecord::Migration
  def self.up
    create_table :entities do |t|
      t.string :name, :null => false
      t.integer :owner_id, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :entities
  end
end
