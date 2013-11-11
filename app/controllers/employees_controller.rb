class EmployeesController < ApplicationController
	load_resource
	
	def index
		if params[:employee] == "employee_list"
      		@employees = Employee.all
    	elsif params[:employee] == "employee_status"
      		@employees = Employee.all
    	end
    	base_query1 = Employee.includes(:employee_department).where(employee_departments: {name: "Management Information System"})
    	@mis_counter = base_query1.count

    	base_query2 = Employee.includes(:employee_department).where(employee_departments: {name: "Business Administration"})
    	@business_counter = base_query2.count

    	base_query3 = Employee.includes(:employee_department).where(employee_departments: {name: "Accounting"})
    	@accounting_counter = base_query3.count

    	base_query4 = Employee.includes(:employee_department).where(employee_departments: {name: "Economics"})
    	@economics_counter = base_query4.count

    	base_query5 = Employee.includes(:employee_department).where(employee_departments: {name: "Basic Science"})
    	@basic_science_counter = base_query5.count

    	base_query6 = Employee.includes(:employee_department).where(employee_departments: {name: "Academic Support"})
    	@academic_support_counter = base_query6.count

    	base_query7 = Employee.where(employee_category: 'Teaching Staff')
    	@teaching_staff_counter = base_query7.count

    	base_query8 = Employee.where(employee_category: 'Non-teaching Staff')
    	@nonteaching_staff_counter = base_query8.count

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
			redirect_to user_path(@employee.user_id)
		else
			flash[:error] = 'An error occurred please try again!'
			render 'new'
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
