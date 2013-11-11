class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new
  
    if user.has_role? :administrator
      can :manage, :all
    end
##############################################
    if  user.has_role? :admission_manager
      can :manage, Student
    end
    
    if user.has_role? :student_viewer
      can :read, Student
    end
#############################################

#############################################
    if user.has_role? :academic_support
        can :manage, Ticket
    end


    if user.has_role? :complaint_manager
      can :manage, Ticket , :employee_department_id => user.employee.employee_department_id
    end

    if user.has_role? :complaint_staff
        can :manage, Ticket, :employee_id => user.employee.id
    end

    if user.has_role? :complaint_assigner
        can :manage, Ticket, :employee_id => nil
    end

    if user.has_role? :complainer
        can :create, Ticket
        can :read, Ticket, :user_id => user.id        
    end
############################################
    if user.has_role? :academic_advisor
        can :manage, GuidanceAdvisor, :employee_id => user.employee.id
    end
  end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
end