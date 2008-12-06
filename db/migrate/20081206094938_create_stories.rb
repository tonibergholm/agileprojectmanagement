class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.integer :project_id, :null => false
      t.integer :sprint_id
      t.string :name, :null => false
      t.text :description
      t.integer :business_value, :default => 100
      t.integer :estimate, :default => 100
      t.integer :status, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
