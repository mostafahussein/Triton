class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user || User.new
  
    if user.has_role? :administrator
      can :manage, :all
    end

    if  user.has_role? :admission_manager
      can :manage, Student
    end
    
    if user.has_role? :news_manager
      can :manage, Article
    end
    
    if user.has_role? :ticket_manager
      can :manage, Ticket
    end
    
    if user.has_role? :student_viewer
      can :read, Student
    end

    if user.has_role? :news_viewer
      can :read, Article
    end

    if user.has_role? :ticket_viewer #he should be able to create tickets and see what he has created.
        can :create, Ticket
        can :read, Ticket
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
