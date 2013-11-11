class LeadershipSupervisorsController < ApplicationController
	def index
    @supervisors = LeadershipSupervisor.all
  end

  def show
    @supervisor = LeadershipSupervisor.find(params[:id])
  end

  def new
    @supervisor = LeadershipSupervisor.new
    @employee_dep = EmployeeDepartment.order(:name)
    @positions = EmployeePosition.all
  end

  def create
    @supervisor = LeadershipSupervisor.new(params[:leadership_supervisor])
    if @supervisor.save
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
