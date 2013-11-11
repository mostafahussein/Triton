class EmployeePosition < ActiveRecord::Base
  attr_accessible :position_title, :employee_department_id

  has_many :employees
  belongs_to :employee_department

  def to_label
  	position_title
  end

end
