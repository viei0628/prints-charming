class PrinterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
    #user.is_owner
  end

  def new?
    true 
  end
end
