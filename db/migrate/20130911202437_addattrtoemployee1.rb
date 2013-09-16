class Addattrtoemployee1 < ActiveRecord::Migration
  def up
  	add_column :employees , :office_country_id, :integer
  	add_column :employees, :home_country_id, :integer
  end

  def down
  end
end
