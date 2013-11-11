class StatesController < ApplicationController
	load_resource
	def edit
		@state = State.find(params[:id])
	end

	def update
		@state = State.find(params[:id])
		if @state.update_attributes(params[:state])
			flash[:notice] = 'Successfuly updated.'
			render 'tickets/ticket_activity'
		else
			flash[:error] = 'An error occurred please try again!'
		end
	end
end
