class EmployeesController < ApplicationController
	load_and_authorize_resource
	
	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(params[:employee])
		if @employee.save
			flash[:notice] = 'An employee has been created.'
			redirect_to employee_admission_steps_path(:employee_id => @employee.id)
		else
			flash[:error] = 'An error occurred please try again!'
			redirect_to '/dashboard'
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
