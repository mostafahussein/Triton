class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
  after_create :add_to_users

  attr_accessible :employee_number, :joining_date, :first_name, :middle_name, :last_name,
  :gender, :job_title, :employee_department_id, :qualification, :experience_detail,
  :experience_year, :experience_month, :status_description, :date_of_birth, :marital_status,
  :children_count, :father_name, :mother_name, :husband_name, :blood_group, :nationality_id,
  :home_address_line1, :home_address_line2, :home_city, :home_state, :home_pin_code,
  :office_address_line1, :office_address_line2, :office_city, :office_state, :office_pin_code,
  :office_phone1, :office_phone2, :mobile_phone, :home_phone, :email, :fax, :user_id, :school_id,
  :employee_category_id, :employee_position_id, :reporting_manager_id, :employee_grade_id,
  :office_country_id, :home_country_id

  belongs_to :employee_department
  belongs_to :employee_category
  belongs_to :employee_position
  belongs_to :employee_grade
  belongs_to :nationality, class_name: 'Country'
  belongs_to :reporting_manager, class_name: "Employee"
  belongs_to :school
  has_one :user

  has_many :tickets

  def add_to_users
    new_user = User.new
    new_user.user_name = self.first_name
    new_user.first_name = self.first_name
    new_user.last_name = self.last_name
    new_user.email = self.email
    new_user.password = "123456"
    new_user.password_confirmation = "123456"
    new_user.user_type = 'employee'
    new_user.save
    t = Employee.find(self.id)
    t.user_id = new_user.id
    t.save
  end

  def to_label
   full_name = first_name + " " + last_name
  end

  def full_name
   full_name = first_name + " " + last_name
  end

end