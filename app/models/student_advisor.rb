class StudentAdvisor < ActiveRecord::Base
  attr_accessible :counselor_supervisor_id, :counselor_advisor_id, :employee_department_id,
  				  :batch_id, :student_class_id
  belongs_to :counselor_supervisor
  belongs_to :counselor_advisor
  belongs_to :employee_department
  belongs_to :batch
  belongs_to :student_class

end
