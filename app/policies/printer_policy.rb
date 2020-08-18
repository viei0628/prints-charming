class PrinterPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.is_owner
  end

  def new?
    true
  end

  def show?
    true
  end

end
