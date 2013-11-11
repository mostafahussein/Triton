class StudentClass < ActiveRecord::Base
  attr_accessible :name, :batch_id
  belongs_to :batch
  has_many :students
  has_many :batch_counselor_advisors
  has_many :batch_leadership_leaders

  def student_section
  	"#{self.name}".to_s
  end

end
