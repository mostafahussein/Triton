class Student < ActiveRecord::Base
  after_create :add_to_users , on: :create
  attr_accessible :address_line1, :address_line2, :admission_date, :admission_no, :birth_place, :blood_group, :city,
                  :class_roll_no, :date_of_birth, :email, :first_name, :gender, :language, :last_name, :middle_name,
                  :phone1, :phone2, :post_code, :religion, :country_id, :nationality_id  ,
                   :guardians_attributes, :previous_detail_attributes, :batch_id, :user_id

  belongs_to :user
  belongs_to :country
  belongs_to :school
  belongs_to :batch
  belongs_to :nationality , class_name: 'Country'
  has_many :guardians
  has_many :student_previous_subject_marks
  accepts_nested_attributes_for :guardians
  has_one :previous_detail
  accepts_nested_attributes_for :previous_detail

  def add_to_users
    new_user = User.new
    new_user.user_name = self.first_name
    new_user.first_name = self.first_name
    new_user.last_name = self.last_name
    new_user.email = self.email
    new_user.password = "123456"
    new_user.password_confirmation = "123456"
    new_user.user_type = 'student'
    self.user_id = new_user.id
    new_user.save
    t = Student.find(self.id)
    t.user_id = new_user.id
    t.save
  end
end