class AddColumn11 < ActiveRecord::Migration
  def up
    add_column :users, :user_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end

  def down
  end
end
