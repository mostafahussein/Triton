class Reply < ActiveRecord::Base
  attr_accessible :previous_state_id, :state_id, :text, :ticket_id, :user_id
  belongs_to :user
  belongs_to :ticket
 # belongs_to :previous_state
 # belongs_to :state

  validates :text, presence: true
end