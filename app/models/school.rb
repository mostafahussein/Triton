class School < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :students
  has_many :guardians
  has_many :batches
end
