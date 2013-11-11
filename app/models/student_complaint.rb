class StudentComplaint < ActiveRecord::Base
  attr_accessible :complaint_category, :complaint_description, :proposed_solution,
  				:first_name, :last_name, :email, :employee_department_id, :user_id,
  				:employee_id, :batch_id, :student_class_id, :course_id
end
