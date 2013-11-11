class BatchesController < ApplicationController
	load_resource
	
	def index
		@batches = Batch.all
	end

	def show
		@batch = Batch.find(params[:id])
	end


	def new
		@batch = Batch.new
		@batch.student_classes.build
	end


	def create
		@batch = Batch.new(params[:batch])
		if @batch.save
			flash[:notice] = 'Batch Created Successfully'
			redirect_to '/dashboard'
		else
			flash[:error] = 'An error occurred please try again!'
			redirect_to 'new'
		end
	end

	def edit
	end

	def update
	end
end
