class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :relation
      t.string :email
      t.string :office_phone1
      t.string :office_phone2
      t.string :mobile_phone
      t.string :office_address_line1
      t.string :office_address_line2
      t.string :city
      t.date :dob
      t.string :occupation
      t.string :income
      t.string :education
      t.integer :country_id
      t.integer :user_id
      t.integer :student_id


      t.timestamps
    end
  end
end
