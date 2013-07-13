class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:success] = ' Student Record Saved Successfully. Please fill the Parent Details.'
      redirect_to new_student_guardian_path(@student.id)
    else
      flash[:error] = 'An error occurred please try again!'
      render 'new'
    end
  end

  def edit
  end
end