class Ability
  include CanCan::Ability

    def initialize(user)
      user ||= User.new
      if user.role == "admin"
        can :manage, :all
      elsif user.role == "client"
        alias_action :create, :read, :update, :to => :cru
        can :cru, Product
      end
    end
    
end
