class Addandmodify < ActiveRecord::Migration
  def up
  	rename_column :roles, :name, :role_name
  	add_column :roles, :role_type, :string
  	add_column :users, :user_type_id, :integer
  end

  def down
  end
end
