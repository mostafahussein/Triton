class CreateBatchLeadershipLeaders < ActiveRecord::Migration
  def change
    create_table :batch_leadership_leaders do |t|
    	t.integer :leadership_leader_id
    	t.integer :employee_department_id
    	t.integer :batch_leadership_supervisor_id
    	t.integer :student_class_id

      t.timestamps
    end
  end
end
