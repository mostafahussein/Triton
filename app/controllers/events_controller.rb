class EventsController < ApplicationController
	def index
		@events = Event.all
		@events_by_date = @events.group_by(&:event_date)
		@event = Event.new
		@date = params[:date] ? Date.parse(params[:date]) : Date.today
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])
    	if @event.save
      		flash[:notice] = 'Event has been published.'
      		redirect_to events_path
    	else
      		flash[:error] = 'An error occurred please try again!'
      		render 'new'
    	end
	end
end
