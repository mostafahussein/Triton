class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :employee_department_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :employee_id
      t.string :ticket_state
      t.boolean :assign_state , :default => false
      t.datetime :due_date
      t.integer :batch_id
      t.integer :student_class_id
      t.integer :course_id

      t.timestamps
    end
  end
end
