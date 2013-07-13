class Addcolumn14 < ActiveRecord::Migration
  def up
    add_column :articles, :status, :string
  end

  def down
  end
end
