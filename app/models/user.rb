class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :validatable,:confirmable and :omniauthable
  devise  :database_authenticatable, :registerable, :recoverable, :rememberable,
          :trackable, :lockable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :user_name, :first_name, :last_name, :password, :password_confirmation, :remember_me,
                  :role_ids, :current_password, :user_type, :contact_id
  attr_accessor :current_password
  # attr_accessible :title, :body

  has_many :assignments
  has_many :roles, :through => :assignments
  has_many :articles
  has_many :comments
  has_one :student
  has_one :guardian
  has_one :employee
  has_many :tickets
  has_many :permissions
  accepts_nested_attributes_for :tickets

  


  has_many :sent_messages,
  :class_name => 'Message',
  :foreign_key => 'sender_id',
  :order => "messages.created_at DESC",
  :conditions => ["messages.sender_deleted = ?", false]

  has_many :received_messages,
  :class_name => 'Message',
  :foreign_key => 'recepient_id',
  :order => "messages.created_at DESC",
  :conditions => ["messages.recepient_deleted = ?", false]


  #def unread_messages?
   # unread_message_count > 0 ? true : false
  #end

  def has_unread_messages?
    received_messages.count > 0
  end

  def unread_messages
    received_messages.where('read_at IS NULL')
  end

  def unread_messages_count
    unread_messages.count
  end

  # Returns the number of unread messages for this user
  #def unread_message_count
   # eval 'messages.count(:conditions => ["recepient_id = ? AND read_at IS NULL", self.id])'
  #end



  def has_role?(role_sym)
    roles.any? { |r| r.role_name.underscore.to_sym == role_sym }
  end
end
