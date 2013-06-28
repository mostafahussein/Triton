class CreateStudentPreviousSubjectMarks < ActiveRecord::Migration
  def change
    create_table :student_previous_subject_marks do |t|
      t.integer :student_id
      t.string :subject
      t.string :mark
      t.integer :school_id

      t.timestamps
    end
  end
end
