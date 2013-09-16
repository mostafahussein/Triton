class EmployeeAdmissionStepsController < ApplicationController
	include Wicked::Wizard
	steps :employee_admission1 , :employee_admission2

	def show
		@employee = Employee.find(params[:employee_id])
		render_wizard
	end

	def update
		@employee = Employee.find(params[:employee_id])
		@employee.update_attributes(params[:employee])
		render_wizard(@employee)
	end

	private

	def redirect_to_finish_wizard(options = nil)
    	redirect_to users_path , notice: "A new employee has been created successfully."
  	end
end
