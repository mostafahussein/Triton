class StudentsController < ApplicationController
  load_resource
  def index
    if params[:student] == "students_list"
      @students = Student.all
    elsif params[:student] == "student_status"
      @students = Student.all
    end
    #business administration
    # first year
    base_query1 = Student.includes(:batch).where(batches: {name: 'Business Administration', school_year: 'First Year'})
    @batch_counter1 = base_query1.count
    # second year
    base_query2 = Student.includes(:batch).where(batches: {name: 'Business Administration', school_year: 'Second Year'})
    @batch_counter2 = base_query2.count
    # third year
    base_query3 = Student.includes(:batch).where(batches: {name: 'Business Administration', school_year: 'Third Year'})
    @batch_counter3 = base_query3.count
    # fourth year
    base_query4 = Student.includes(:batch).where(batches: {name: 'Business Administration', school_year: 'Fourth Year'})
    @batch_counter4 = base_query4.count

    #management information system
    # first year
    base_query5 = Student.includes(:batch).where(batches: {name: 'Management Information System', school_year: 'First Year'})
    @batch_counter5 = base_query5.count
    # second year
    base_query6 = Student.includes(:batch).where(batches: {name: 'Management Information System', school_year: 'Second Year'})
    @batch_counter6 = base_query6.count
    # third year
    base_query7 = Student.includes(:batch).where(batches: {name: 'Management Information System', school_year: 'Third Year'})
    @batch_counter7 = base_query7.count
    # fourth year
    base_query8 = Student.includes(:batch).where(batches: {name: 'Management Information System', school_year: 'Fourth Year'})
    @batch_counter8 = base_query8.count

  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.guardians.build
    @student.previous_details.build
    @countries = Country.all
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      flash[:notice] = 'Student Record Saved Successfully. Please fill the Parent Details.'
      redirect_to new_student_guardian_path(@student.id)
    else
      flash[:error] = 'An error occurred please try again!'
      render 'new'
    end
  end

  def edit
  end
end