class StudentClassesController < ApplicationController
	def index
		@sections = StudentClass.all
		@student = Student.all
	end
	def show
		@sections = StudentClass.all
		@section = StudentClass.find(params[:id])
	end
end
