class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|

	    t.string :employee_number
	    t.date :joining_date
	    t.string :first_name
	    t.string :middle_name
	    t.string :last_name
	    t.boolean :gender
	    t.string :job_title
	    t.integer :employee_department_id
	    t.string :qualification
	    t.text :experience_detail
	    t.integer :experience_year
	    t.integer :experience_month
	    t.string :status_description
	    t.date :date_of_birth
	    t.string :marital_status
	    t.integer :children_count
	    t.string :father_name
	    t.string :mother_name
	    t.string :husband_name
	    t.string :blood_group
	    t.integer :nationality_id
	    t.string :home_address_line1
	    t.string :home_address_line2
	    t.string :home_city
	    t.string :home_state
	    t.string :home_pin_code
	    t.string :office_address_line1
	    t.string :office_address_line2
	    t.string :office_city
	    t.string :office_state
	    t.string :office_pin_code
	    t.string :office_phone1
	    t.string :office_phone2
	    t.string :mobile_phone
	    t.string :home_phone
	    t.string :email
	    t.string :fax
	    t.integer :user_id
	    t.integer :school_id
	    t.integer  :employee_category_id
	    t.integer  :employee_position_id
	    t.integer :reporting_manager_id
	    t.integer :office_country_id
	    t.integer :home_country_id
	    t.string :employee_category

      t.timestamps
    end
    add_index :employees, :employee_number
  end
end
