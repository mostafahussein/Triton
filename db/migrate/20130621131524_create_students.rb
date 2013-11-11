class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :admission_no
      t.string :class_roll_no
      t.date :admission_date
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :blood_group
      t.string :birth_place
      t.string :language
      t.string :religion
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :post_code
      t.string :phone1
      t.string :phone2
      t.string :email
      t.integer :country_id
      t.integer :user_id
      t.integer :nationality_id
      t.text :passport_number
      t.boolean :has_paid_fees
      t.date :enrollment_date 
      t.integer :batch_id
      t.integer :student_class_id 

      t.timestamps
    end
  end
end
