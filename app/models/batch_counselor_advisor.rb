class BatchCounselorAdvisor < ActiveRecord::Base
  attr_accessible :counselor_advisor_id , :employee_department_id,
   :batch_counselor_supervisor_id, :student_class_id
  belongs_to :batch_counselor_supervisor
  belongs_to :counselor_advisor
  belongs_to :employee_department
  belongs_to :student_class
end
