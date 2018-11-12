class DosePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def destroy?
    is_owner_or_admin?
  end

  private

  def is_owner_or_admin?
    record.user == user || user.admin
  end
end
