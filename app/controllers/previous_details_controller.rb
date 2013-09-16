class PreviousDetailsController < ApplicationController
  load_and_authorize_resource
  before_filter :set_student, only: [:new, :create]
  def index
    @previous_detail = PreviousDetail.all
  end

  def show
    @previous_detail = PreviousDetail.find(params[:id])
  end

  def new
    @previous_detail = PreviousDetail.new
  end

  def create
    @previous_detail = PreviousDetail.new(params[:previous_detail])
    if @previous_detail.save
      flash[:notice] = 'Record Saved Successfully.'
      redirect_to user_path(@student.user_id)
    else
      flash.now[:error] = 'An error occurred please try again!'
      redirect_to '/student/admission1'
    end
  end

  def edit

  end

  private
  def set_student
    @student = Student.find(params[:student_id])
  end
end
