class StudentAdvisorsController < ApplicationController
	def academic_counselor
		
	end

	def index
		@studentadvisors = StudentAdvisor.all
	end

	def show
		@studentadvisor = StudentAdvisor.find(params[:id])
	end

	def new
		@studentadvisor = StudentAdvisor.new
		@counselordepartment = EmployeeDepartment.order(:name)
		@batches = Batch.all
	end

	def create
		@studentadvisor = StudentAdvisor.new(params[:student_advisor])
		if @studentadvisor.save
			flash[:notice] = 'Created Successfully.'
			redirect_to 'academic_counselor'
		else
			flash.now[:error] = 'An error occurred please try again!'
			render 'new'
		end
	end

	def edit
	end
end
