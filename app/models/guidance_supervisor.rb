class GuidanceSupervisor < ActiveRecord::Base
  attr_accessible :name , :employee_id , :employee_department_id, :guidance_advisors_attributes
  has_many :guidance_advisors
  belongs_to :employee
  belongs_to :employee_department
  
  accepts_nested_attributes_for :guidance_advisors

  def self.search(search)
  	if search
  		find(:all, :conditions => ['first_name LIKE ?', "%#{search}"])
  	else
  		find(:all)
  	end
  end

end
