class CreateBatchLeadershipSupervisors < ActiveRecord::Migration
  def change
    create_table :batch_leadership_supervisors do |t|
    	t.integer :leadership_supervisor_id
    	t.integer :employee_department_id
    	t.integer :leadership_batch_id

      t.timestamps
    end
  end
end
