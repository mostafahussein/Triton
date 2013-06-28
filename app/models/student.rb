class Student < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :admission_date, :admission_no, :birth_place, :blood_group, :city,
                  :class_roll_no, :date_of_birth, :email, :first_name, :gender, :language, :last_name, :middle_name,
                  :phone1, :phone2, :post_code, :religion, :country_id, :nationality_id  , :guardians_attributes, :previous_detail_attributes

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
end