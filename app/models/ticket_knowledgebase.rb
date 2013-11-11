class TicketKnowledgebase < ActiveRecord::Base
  attr_accessible :ticket_id , :base_question, :base_answer
  belongs_to :ticket
end
