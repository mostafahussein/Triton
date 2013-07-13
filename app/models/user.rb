class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :validatable,:confirmable and :omniauthable
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable,
          :trackable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :user_name, :first_name, :last_name, :password, :password_confirmation, :remember_me,
                  :role_ids, :current_password
  attr_accessor :current_password
  # attr_accessible :title, :body

  has_many :assignments
  has_many :roles, :through => :assignments
  has_many :articles
  has_many :comments
  has_many :students
  has_many :guardians

  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
end
