class RegistrationsController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication

  def check_permissions
    authorize! :create, resource
  end

  protected
  def after_sign_up_path_for(resource)
    '/dashboard'
  end

  def after_inactive_sign_up_path_for(resource)
    '/dashboard'
  end
end