class PreviousDetail < ActiveRecord::Base
  attr_accessible :course, :institution, :school_id, :student_id, :total_mark, :year
  belongs_to :student
end
