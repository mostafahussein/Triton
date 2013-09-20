class EmployeeDepartment < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :tickets
  has_many :employees
  has_many :states, through: :tickets
end
