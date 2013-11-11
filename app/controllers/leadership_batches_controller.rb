class LeadershipBatchesController < ApplicationController
		def index
    	@leadership_batches = LeadershipBatch.all
  	end

  	def show
    	@leadership_batch = LeadershipBatch.find(params[:id])
  	end

  	def new
    	@leadership_batch = LeadershipBatch.new
  	end

  	def create
    	@leadership_batch = LeadershipBatch.new(params[:leadership_batch])
    	if @leadership_batch.save
      		flash[:notice] = 'Created Successfully.'
      		redirect_to '/student_leadership'
    	else
      		flash.now[:error] = 'An error occurred please try again!'
      		render 'new'
    	end
  	end

  	def edit
  	end
end
