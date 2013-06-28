class User < ActiveRecord::Base
  has_secure_password  
  attr_accessible :user_name, :first_name, :last_name, :email,:password, :password_confirmation, :admin, :employee, :student, :parent
  validates_uniqueness_of :user_name, :email
  has_many :articles
  has_many :comments
  has_many :students
  has_many :guardians
end
