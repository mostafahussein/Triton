class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_states


   rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_path
  end  

  def find_states
    @states = State.all
  end


  private
  def stored_location_for(resource_or_scope)
    nil
  end

  def after_sign_in_path_for(resource_or_scope)
    return user_messages_path(current_user, :mailbox=>:inbox)
  end
end
