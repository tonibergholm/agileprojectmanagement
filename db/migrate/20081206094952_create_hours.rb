class CreateHours < ActiveRecord::Migration
  def self.up
    create_table :hours do |t|
      t.integer :task_id
      t.integer :user_id, :null => false
      t.date :day, :null => false
      t.float :hour_entry, :null => false
      t.string :description, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :hours
  end
end
