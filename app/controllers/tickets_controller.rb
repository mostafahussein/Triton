class TicketsController < ApplicationController
load_and_authorize_resource
	def index
		if params[:ticket] == "activity"
			@department_count = EmployeeDepartment.find(:all,
    			:select => 'employee_departments.name AS employee_departments_name, COUNT(*) AS department_counter',
    			:joins => 'INNER JOIN tickets ON tickets.employee_department_id = employee_departments.id INNER JOIN states ON states.id = tickets.state_id',
    			:group => 'employee_departments.name')
    		@course_count = Course.find(:all,
    			:select => 'courses.course_name AS course_name, COUNT(*) AS course_counter',
   				:joins => 'INNER JOIN tickets ON tickets.course_id = courses.id INNER JOIN states ON states.id = tickets.state_id',
   				:group => 'courses.course_name')
    		@course_department_count = Course.find(:all,
   				:select => 'courses.course_department AS course_department, COUNT(*) AS course_counter',
   				:joins => 'INNER JOIN tickets ON tickets.course_id = courses.id INNER JOIN states ON states.id = tickets.state_id',
    			:group => 'courses.course_department')
    		base_query1 = Ticket.includes(:state).where(states: {name: "Emergency"})
    		@emergency_counter = base_query1.count
    		base_query2 = Ticket.includes(:state).where(states: {name: "High"})
    		@high_counter = base_query2.count
    		base_query3 = Ticket.includes(:state).where(states: {name: "Normal"})
    		@normal_counter = base_query3.count
    		base_query4 = Ticket.where(ticket_state: 'open')
    		@open_counter = base_query4.count
    		base_query5 = Ticket.where(ticket_state: 'solved')
    		@solved_counter = base_query5.count
    		base_query6 = Ticket.where(ticket_state: 'canceled')
    		@canceled_counter = base_query6.count
		elsif params[:ticket] == "staff"
			@complaint_staff = Employee.includes(:employee_position).where(employee_positions: {employee_position: 'Help Desk'}).search(params[:search])
		elsif params[:ticket] == "tickets"
			@tickets = Ticket.accessible_by(current_ability)
		elsif params[:ticket] == "new"
			@ticket = Ticket.new
		end

		if params[:assign_state]
			@tickets = @tickets.where(:assign_state => (params[:assign_state] == "1"))
		end
	    if params[:ticket_state] == "open"
	     	@tickets = Ticket.where({ticket_state: "open"})
    	end
    	if params[:ticket_state] == "solved"
	     	@tickets = Ticket.where({ticket_state: "closed (solved)"})
    	end
    	if params[:ticket_state] == "canceled"
	     	@tickets = Ticket.where({ticket_state: "closed (canceled)"})
    	end
    	
    	@ticket = Ticket.new
	end

	def show
		@ticket = Ticket.find(params[:id])
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
			Rails.logger.info(@ticket.errors.inspect) 
			render 'new'
		end
	end

	def edit
		@ticket = Ticket.find(params[:id])
	end

	def update
		@ticket = Ticket.find(params[:id])
		if @ticket.update_attributes(params[:ticket])
			flash[:notice] = 'Successfuly updated.'
			redirect_to '/tickets?ticket=activity'
		else
			flash[:error] = 'An error occurred please try again!'
			render @ticket
		end
	end
end