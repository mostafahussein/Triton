class Guardian < ActiveRecord::Base
  after_create :add_to_users

  attr_accessible :city, :dob, :education, :email, :first_name,
  :income, :last_name, :mobile_phone, :occupation, :school_id, 
  :office_address_line1, :office_address_line2, :office_phone1,
  :office_phone2, :relation, :student_id, :country_id, :user_id
 
  belongs_to :user
  belongs_to :country
  belongs_to :school
  belongs_to :student
  attr_accessor :admission_no

  def add_to_users
    new_user = User.new
    new_user.user_name = self.first_name
    new_user.first_name = self.first_name
    new_user.last_name = self.last_name
    new_user.email = self.email
    new_user.password = "123456"
    new_user.password_confirmation = "123456"
    new_user.user_type = 'parent'
    new_user.save
    t = Guardian.find(self.id)
    t.user_id = new_user.id
    t.save
  end
end