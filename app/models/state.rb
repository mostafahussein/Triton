class State < ActiveRecord::Base
  attr_accessible :background, :color, :name
  has_many :tickets

  def to_label
  	name.to_s
  end
  
end
