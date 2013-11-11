class Event < ActiveRecord::Base
  attr_accessible :event_date, :event_description, :event_name, :event_place
  validates :event_place, :uniqueness => {scope: [:event_date]}
end
