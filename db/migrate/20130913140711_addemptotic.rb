class Addemptotic < ActiveRecord::Migration
  def up
  	add_column :tickets, :employee_id, :integer
  end

  def down
  end
end
