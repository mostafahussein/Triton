class BatchLeadershipLeader < ActiveRecord::Base
   attr_accessible :leadership_leader_id , :employee_department_id,
   :batch_leadership_supervisor_id, :student_class_id
  belongs_to :batch_leadership_supervisor
  belongs_to :leadership_advisor
  belongs_to :employee_department
  belongs_to :student_class
end
