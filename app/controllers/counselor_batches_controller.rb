class CounselorBatchesController < ApplicationController
	def index
    	@counselor_batches = CounselorBatch.all
  	end

  	def show
    	@counselor_batch = CounselorBatch.find(params[:id])
  	end

  	def new
    	@counselor_batch = CounselorBatch.new
  	end

  	def create
    	@counselor_batch = CounselorBatch.new(params[:counselor_batch])
    	if @counselor_batch.save
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
