class CounselorAdvisorsController < ApplicationController
  def index
    @advisors = CounselorAdvisor.all
  end

  def show
    @advisor = CounselorAdvisor.find(params[:id])
  end

  def new
    @advisor = CounselorAdvisor.new
    @departments = EmployeeDepartment.order(:name)
    @positions = EmployeePosition.all
  end

  def create
    @advisor = CounselorAdvisor.new(params[:counselor_advisor])
    if @advisor.save
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
