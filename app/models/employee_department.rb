class EmployeeDepartment < ActiveRecord::Base
  attr_accessible :code, :name
  
  has_many :tickets
  has_many :employees
  has_many :states, through: :tickets

  has_many :employee_positions

  has_many :counselor_supervisors
  has_many :counselor_advisors


  has_many :leadership_leaders
  has_many :leadership_supervisors

  has_many :batch_leadership_supervisors
  has_many :batch_leadership_leaders

  has_many :batch_counselor_supervisors
  has_many :batch_counselor_advisors

def to_label
  name
end
 

end
