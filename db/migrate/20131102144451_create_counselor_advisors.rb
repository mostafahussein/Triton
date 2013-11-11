class CreateCounselorAdvisors < ActiveRecord::Migration
  def change
    create_table :counselor_advisors do |t|
    	t.integer :employee_id
    	t.integer :employee_department_id
    	t.integer :employee_position_id


      t.timestamps
    end
  end
end
