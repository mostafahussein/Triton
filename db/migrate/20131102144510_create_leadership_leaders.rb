class CreateLeadershipLeaders < ActiveRecord::Migration
  def change
    create_table :leadership_leaders do |t|
    	t.integer :employee_id
    	t.integer :employee_department_id
    	t.integer :employee_position_id


      t.timestamps
    end
  end
end
