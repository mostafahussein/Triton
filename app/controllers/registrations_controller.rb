class RegistrationsController < Devise::RegistrationsController
 # skip_before_filter :require_no_authentication

 
 # def check_permissions
  #  authorize! :create, resource
 # end

  #protected
  #def after_sign_up_path_for(resource)
  #  nil
 # end

  #def after_inactive_sign_up_path_for(resource)
  #  '/dashboard'
  #end 
end