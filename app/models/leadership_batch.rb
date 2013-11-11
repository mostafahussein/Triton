class LeadershipBatch < ActiveRecord::Base
  attr_accessible :batch_id
  belongs_to :batch
  has_many :batch_leadership_supervisors

  def to_label
  	batch.to_label
  	
  end
end
