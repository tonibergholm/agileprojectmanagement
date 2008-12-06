class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name, :null => false
      t.integer :type, :null => false, :default =>0

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
