class CreatePreviousDetails < ActiveRecord::Migration
  def change
    create_table :previous_details do |t|
      t.integer :student_id
      t.string  :institution
      t.date    :year
      t.string  :course
      t.string  :total_mark
      t.integer :school_id

      t.timestamps
    end
  end
end
