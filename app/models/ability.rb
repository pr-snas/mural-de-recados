class Ability
  include CanCan::Ability

  def initialize(user)
    usuario ||= Usuario.new

    if usuario.admin?
      can :manage, :all
    else
      can :read, :all
    end
  end
end
