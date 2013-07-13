class Addcolumn12 < ActiveRecord::Migration
  def up
    add_column :articles, :body, :text
  end

  def down
  end
end
