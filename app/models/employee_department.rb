class EmployeeDepartment < ActiveRecord::Base
  attr_accessible :code, :name
  has_many :tickets
  has_many :employees
end
