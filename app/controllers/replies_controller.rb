class RepliesController < ApplicationController
	load_and_authorize_resource
		before_filter :load_ticket

	def create
		@reply = @ticket.replies.build(params[:reply])
		@reply.user = current_user
		if @reply.save
			flash[:notice] = "Comment has been created."
			redirect_to @ticket
		else
			flash[:alert] = "Comment has not been created."
			redirect_to @ticket
		end
	end



	private

  def load_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end
end