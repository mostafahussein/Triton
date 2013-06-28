class Batch < ActiveRecord::Base
  attr_accessible :end_date, :grading_type, :name, :start_date
  belongs_to :school
  has_many :students
end
