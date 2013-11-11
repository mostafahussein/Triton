class CreateBatchCounselorSupervisors < ActiveRecord::Migration
  def change
    create_table :batch_counselor_supervisors do |t|
    	t.integer :counselor_supervisor_id
    	t.integer :employee_department_id
    	t.integer :counselor_batch_id

      t.timestamps
    end
  end
end
