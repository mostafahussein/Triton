class Addattrtoemployee < ActiveRecord::Migration
  def up
  	add_column :employees , :country_id, :integer
  end

  def down
  end
end
