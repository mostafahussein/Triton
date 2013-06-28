class StudentPreviousDataController < ApplicationController
  before_filter :set_student, only: [:new, :create]
  def index
    @student_previous_data = StudentPreviousData.all
  end

  def show
    @student_previous_data = StudentPreviousData.find(params[:id])
  end

  def new
    @student_previous_data = StudentPreviousData.new
  end

  def create
    @student_previous_data = StudentPreviousData.new(params[:student_previous_data])
    if @student_previous_data.save
      flash[:success] = 'Record Saved Successfully.'
      redirect_to '/user/dashboard'
    else
      flash.now[:error] = 'An error occurred please try again!'
      redirect_to '/student/admission1'
    end
  end

  def edit

  end

  private
  def set_student
    @student = Student.find params[:student_id]
  end
end
