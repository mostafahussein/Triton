class Addcolumn13 < ActiveRecord::Migration
  def up
    remove_column :articles , :body
    rename_column :articles, :name, :body
  end

  def down
  end
end
