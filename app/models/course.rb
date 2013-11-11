class Course < ActiveRecord::Base
  attr_accessible :batch_id, :course_department, :course_hours, :course_name,
   :course_semester, :employee_id, :course_code, :course_batch

  belongs_to :batch
  belongs_to :employee_id
  has_many :tickets
  has_many :states, through: :tickets


  def to_label
   course_name
  end
end
