class CreateBatchCounselorAdvisors < ActiveRecord::Migration
  def change
    create_table :batch_counselor_advisors do |t|
    	t.integer :counselor_advisor_id
    	t.integer :employee_department_id
    	t.integer :batch_counselor_supervisor_id
    	t.integer :student_class_id

      t.timestamps
    end
  end
end
