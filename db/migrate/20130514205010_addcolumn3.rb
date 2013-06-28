class Addcolumn3 < ActiveRecord::Migration
  def up
    add_column :articles , :user_id , :integer
    add_column :comments , :user_id , :integer
  end

  def down
  end
end
