class Ticket < ActiveRecord::Base
	before_save :default_values

  after_commit :close_solved
  after_commit :close_canceled

  before_create :assign_state

  after_create :send_message_to_user



  attr_accessible :description, :title, :employee_department_id, :user_id, :first_name,
   :last_name , :email, :state_id, :employee_id, :ticket_state, :assign_state
  

  belongs_to :employee_department
  belongs_to :user
  belongs_to :state
  belongs_to :employee

  has_many :replies

  def default_values
    self.state_id = 3 if self.state_id.nil?
  end

  def to_label
    ticket_state.to_s
  end

  def close_solved
    if self.ticket_state == "solved"
      self.update_column(:ticket_state, "closed (solved)")
      self.save!
    end
  end

  def close_canceled
    if self.ticket_state == "canceled"
      self.update_column(:ticket_state, "closed (canceled)")
      self.save!
    end
  end

def assign_state
  if self.employee_id.nil?
    self.assign_state = "unassigned"
  else 
    self.assign_state = "assigned"
  end 
end

def send_message_to_user
  if self.save
    user = self.user
    message = Message.new
    message.sender_id = 1
    message.recepient_id = user.id
    message.subject = "Support Center Team"
    message.body = "Hello, #{user.first_name} #{user.last_name}
                    Thank you for contacting us.
                    A support ticket request has been created and a representative will be getting back to you shortly if necessary.

                    Support Center Team "
    message.save
  end
end

  Ticket.all.each do |ticket|
    if ticket.ticket_state.blank?
      ticket.ticket_state = 'open'
    end
    ticket.save
  end

end
