class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :story_id, :null => false
      t.string :name, :null => false
      t.text :description, :null => false
      t.integer :status, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
