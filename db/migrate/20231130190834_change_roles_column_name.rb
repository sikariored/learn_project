class ChangeRolesColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :roles, :rolename, :role_name
  end
end
