class CounselorSupervisorsController < ApplicationController
	def index
    @supervisors = CounselorSupervisor.all
  end

  def show
    @supervisor = CounselorSupervisor.find(params[:id])
  end

  def new
    @supervisor = CounselorSupervisor.new
    @departments = EmployeeDepartment.order(:name)
    @positions = EmployeePosition.all
  end

  def create
    @supervisor = CounselorSupervisor.new(params[:counselor_supervisor])
    if @supervisor.save
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
