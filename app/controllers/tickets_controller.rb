class TicketsController < ApplicationController
	load_and_authorize_resource
	def index
		#@tickets = Ticket.all
		@tickets_grid = initialize_grid(Ticket,
			:include => [:user, :employee_department, :state])
	
	end

	def show
		#@ticket = Ticket.find(params[:id])
		@reply = @ticket.replies.build # this for comments on ticket
		@state = State.all # this for a model called State which describe the priority of the ticket (Emergency / High / Normal )
	end

	def new
		@ticket = Ticket.new
	end

	def create
		@ticket = Ticket.new(params[:ticket])
		if @ticket.save
			flash[:notice] = 'Support ticket request created.'
			redirect_to @ticket
		else
			flash[:error] = 'An error occurred please try again!'
			redirect_to '/dashboard'
		end
	end

	def edit
		#@ticket = Ticket.find(params[:id])
	end

	def update
		#@ticket = Ticket.find(params[:id])
		if @ticket.update_attributes(params[:ticket])
			flash[:notice] = 'Successfuly updated.'
			redirect_to tickets_path
		else
			flash[:error] = 'An error occurred please try again!'
			render @ticket
		end
	end
end