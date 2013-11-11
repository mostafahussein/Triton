class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_department
      t.string :course_hours
      t.string :course_semester
      t.string :course_batch
      t.string :course_code 
      t.integer :batch_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
