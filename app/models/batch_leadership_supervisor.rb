class BatchLeadershipSupervisor < ActiveRecord::Base
    attr_accessible :leadership_supervisor_id , :employee_department_id , :leadership_batch_id, 
    :batch_leadership_leaders_attributes
  has_many :batch_leadership_leaders
  belongs_to :leadership_supervisor
  belongs_to :employee_department
  belongs_to :leadership_batch
  
  accepts_nested_attributes_for :batch_leadership_leaders

  def self.search(search)
  	if search
  		find(:all, :conditions => ['first_name LIKE ?', "%#{search}"])
  	else
  		find(:all)
  	end
  end
end
