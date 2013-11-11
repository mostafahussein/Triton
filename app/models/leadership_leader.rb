class LeadershipLeader < ActiveRecord::Base
   attr_accessible :employee_id, :employee_department_id, :employee_position_id
  belongs_to :employee
  belongs_to :employee_department
  has_many :batch_leadership_leaders

	def to_label
		employee.to_label
	end
end
