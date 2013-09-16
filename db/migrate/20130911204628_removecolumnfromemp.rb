class Removecolumnfromemp < ActiveRecord::Migration
  def up
  	remove_column :employees, :country_id
  end

  def down
  end
end
