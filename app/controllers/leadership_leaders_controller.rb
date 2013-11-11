class LeadershipLeadersController < ApplicationController
  def index
    @leaders = CounselorAdvisor.all
  end

  def show
    @leader = CounselorAdvisor.find(params[:id])
  end

  def new
    @leader = CounselorAdvisor.new
    @departments = EmployeeDepartment.order(:name)
    @positions = EmployeePosition.all
  end

  def create
    @leader = CounselorAdvisor.new(params[:leadership_leader])
    if @leader.save
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
