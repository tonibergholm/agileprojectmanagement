class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.integer :project_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end
