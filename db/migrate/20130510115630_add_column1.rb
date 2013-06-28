class AddColumn1 < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :admin, :boolean
    add_column :users, :employee, :boolean
    add_column :users, :student, :boolean
    add_column :users, :parent, :boolean
  end

  def down
  end
end
