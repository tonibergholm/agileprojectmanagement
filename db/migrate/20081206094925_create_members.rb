class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.integer :user_id, :null => false
      t.integer :role_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
