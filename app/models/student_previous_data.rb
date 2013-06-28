class StudentPreviousData < ActiveRecord::Base
  attr_accessible :course, :institution, :school_id, :total_mark, :year, :student_id
  belongs_to :student
end
