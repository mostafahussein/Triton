class Article < ActiveRecord::Base
  attr_accessible :content, :body, :user_id
  has_many :comments
  belongs_to :user

  validates_presence_of :body

  def self.newest
    Article.last
  end

  def self.newest_private
    Article.where("type is null").order("id desc").first
  end

  def self.newest_public
    Article.where("type = 'public'").order("id desc").first
  end

  def self.pending
    where(status: 'pending')
  end

  def self.approved
    where(status: 'approved')
  end

end
