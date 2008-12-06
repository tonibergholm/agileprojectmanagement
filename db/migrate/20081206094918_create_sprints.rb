class CreateSprints < ActiveRecord::Migration
  def self.up
    create_table :sprints do |t|
      t.string :name
      t.text :description
      t.date :deadline
      t.integer :release_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :sprints
  end
end
