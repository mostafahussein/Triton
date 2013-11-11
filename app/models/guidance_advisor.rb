class GuidanceAdvisor < ActiveRecord::Base
  attr_accessible :name , :employee_id , :employee_department_id, :guidance_supervisor_id, :batch_id , :student_class_id
  belongs_to :guidance_supervisor
  belongs_to :employee
  belongs_to :employee_department
  belongs_to :batch
  belongs_to :student_class
end
