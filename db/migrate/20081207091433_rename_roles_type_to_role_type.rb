class RenameRolesTypeToRoleType < ActiveRecord::Migration
  def self.up
    rename_column :roles, :type, :role_type
  end

  def self.down
    rename_column :roles, :type, :role_type
  end
end
