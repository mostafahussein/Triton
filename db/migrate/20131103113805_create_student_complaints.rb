class CreateStudentComplaints < ActiveRecord::Migration
  def change
    create_table :student_complaints do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :complaint_category
    	t.text :complaint_description
    	t.text :proposed_solution
    	t.integer :employee_department_id
    	t.integer :user_id
    	t.integer :employee_id 
    	t.integer :batch_id
    	t.integer :student_class_id 
    	t.integer :course_id

      t.timestamps
    end
  end
end
