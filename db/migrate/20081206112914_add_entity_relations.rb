class AddEntityRelations < ActiveRecord::Migration
  def self.up
    add_column :users, :entity_id, :integer
    add_column :projects, :entity_id, :integer
  end

  def self.down
    remove_column :users, :entity_id, :integer
    remove_column :projects, :entity_id, :integer
  end
end
