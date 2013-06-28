class StudentPreviousSubjectMark < ActiveRecord::Base
  attr_accessible :mark, :school_id, :student_id, :subject
  belongs_to :student
end
