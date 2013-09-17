class Addattrtotickets < ActiveRecord::Migration
  def up
  	add_column :tickets, :employee_department_id ,  :integer
  	#remove_column :tickets, :topic_id
  end

  def down
  end
end
