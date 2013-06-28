class Guardian < ActiveRecord::Base
  attr_accessible :city, :dob, :education, :email, :first_name, :income, :last_name, :mobile_phone, :occupation,
                  :office_address_line1, :office_address_line2, :office_phone1, :office_phone2, :relation, :student_id
  belongs_to :user
  belongs_to :country
  belongs_to :school
  belongs_to :student
  attr_accessor :admission_no
end