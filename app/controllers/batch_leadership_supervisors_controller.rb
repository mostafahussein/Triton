class BatchLeadershipSupervisorsController < ApplicationController
	def student_leadership
		
	end
	
	# def index
	# 	if params[:counselor] == "staff"
 #    		@batch_counselor_supervisors = BatchCounselorSupervisor.all
 #    		@batch_counselor_advisors = BatchCounselorAdvisor.all
 #    		@batch_counselors = CounselorBatch.all
 #    		@sections_counselors = StudentClass.all
 #    	elsif params[:counselor] =="section"
 #    		@batch_counselors = CounselorBatch.all
 #    		@sections_counselors = StudentClass.all
 #    	elsif params[:counselor] == "student"
 #    		@batch_counselors = CounselorBatch.all
 #    		@sections_counselors = StudentClass.all
 #    		@student_counselors = Student.all
 #    	end
 #  	end

  	def show
		@batch_leadership_supervisor = BatchLeadershipSupervisor.find(params[:id])
	end

	def new
	   	@batch_leadership_supervisor = BatchLeadershipSupervisor.new
	    @employee_dep = EmployeeDepartment.all
	    @batch_leadership_supervisor.batch_leadership_leaders.build
	end

	def create
	    @batch_leadership_supervisor = BatchLeadershipSupervisor.new(params[:batch_leadership_supervisor])
	    if @batch_leadership_supervisor.save
	      flash[:notice] = 'Created Successfully.'
	      redirect_to '/student_leadership'
	    else
	      flash.now[:error] = 'An error occurred please try again!'
	      render 'new'
	    end
	end

	def edit
	end
end
