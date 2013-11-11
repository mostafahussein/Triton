class CounselorBatch < ActiveRecord::Base
  attr_accessible :batch_id
  belongs_to :batch
  has_many :batch_counselor_supervisors

  def to_label
  	batch.to_label
  	
  end
end
