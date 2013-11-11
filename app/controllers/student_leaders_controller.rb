class StudentLeadersController < ApplicationController
	def student_leadership
		
	end

	def index
		@studentleaders = StudentLeader.all
	end

	def show
		@studentleader = StudentLeader.find(params[:id])
	end

	def new
		@studentleader = StudentLeader.new
		@departments = EmployeeDepartment.order(:name)
	end

	def create
		@studentleader = StudentLeader.new(params[:student_leader])
		if @studentleader.save
			flash[:notice] = 'Created Successfully.'
			redirect_to '/dashboard'
		else
			flash.now[:error] = 'An error occurred please try again!'
			render 'new'
		end
	end

	def edit
	end
end
