class BatchCounselorSupervisor < ActiveRecord::Base
   attr_accessible :counselor_supervisor_id , :employee_department_id , :counselor_batch_id, 
    :batch_counselor_advisors_attributes
  has_many :batch_counselor_advisors
  belongs_to :counselor_supervisor
  belongs_to :employee_department
  belongs_to :counselor_batch
  
  accepts_nested_attributes_for :batch_counselor_advisors

  def to_label
    counselor_supervisor.employee.to_label
  end

  def self.search(search)
  	if search
  		find(:all, :conditions => ['first_name LIKE ?', "%#{search}"])
  	else
  		find(:all)
  	end
  end
end
