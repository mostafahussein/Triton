class Batch < ActiveRecord::Base
  attr_accessible :name,:started_on, :ended_on, :is_active, :is_deleted, :employee_id,
   :language, :school_year, :major, :student_classes_attributes
  has_many :students
  has_many :batch_advisors
  has_many :student_classes
  has_many :tickets
  has_many :states, through: :tickets
  belongs_to :employee
  accepts_nested_attributes_for :student_classes
  has_many :counselor_batches
  has_many :leadership_batches

  def to_label
   name
  end

  def batch_language
    "#{self.name} (#{self.language})"
  end
end
