class GuidanceSupervisorsController < ApplicationController
	def index
    @supervisors = GuidanceSupervisor.joins(:employee).search(params[:search])
    @advisors = GuidanceAdvisor.all
  end

  def show
    @supervisor = GuidanceSupervisor.find(params[:id])
  end

  def new
    @supervisor = GuidanceSupervisor.new
    @departments = EmployeeDepartment.order(:name)
    @supervisors_list = Employee.where('guidance_supervisor' => true).order(:first_name)
    @advisors_list = Employee.where('student_advisor' => true)
    @supervisor.guidance_advisors.build
  end

  def create
    @supervisor = GuidanceSupervisor.new(params[:guidance_supervisor])
    if @supervisor.save
      flash[:notice] = 'Created Successfully.'
      redirect_to guidance_supervisors_path
    else
      flash.now[:error] = 'An error occurred please try again!'
      render 'new'
    end
  end

  def edit
  end

  def academic_counselor
  end
end
