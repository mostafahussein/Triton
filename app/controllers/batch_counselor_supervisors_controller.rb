class BatchCounselorSupervisorsController < ApplicationController
	def academic_counselor
		
	end
	
	def index
		if params[:counselor] == "staff"
    		@batch_counselor_supervisors = BatchCounselorSupervisor.all
    		@batch_counselor_advisors = BatchCounselorAdvisor.all
    		@batch_counselors = CounselorBatch.all
    		@sections_counselors = StudentClass.all
    	elsif params[:counselor] =="section"
    		@batch_counselors = CounselorBatch.all
    		@sections_counselors = StudentClass.all
    	elsif params[:counselor] == "student"
    		@batch_counselors = CounselorBatch.all
    		@sections_counselors = StudentClass.all
    		@student_counselors = Student.all
    	end
  	end

  	def show
		@batch_counselor_supervisor = BatchCounselorSupervisor.find(params[:id])
	end

	def new
	   	@batch_counselor_supervisor = BatchCounselorSupervisor.new
	    @departments = EmployeeDepartment.order(:name)
	    @batch_counselor_supervisor.batch_counselor_advisors.build
	end

	def create
	    @batch_counselor_supervisor = BatchCounselorSupervisor.new(params[:batch_counselor_supervisor])
	    if @batch_counselor_supervisor.save
	      flash[:notice] = 'Created Successfully.'
	      redirect_to '/academic_counselor'
	    else
	      flash.now[:error] = 'An error occurred please try again!'
	      render 'new'
	    end
	end

	def edit
	end
end
