class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.order(created_at: :asc)
    end
  end

  def show?
    true
  end

  def update?
    user == record.user
  end

  def create?
    user
  end

  def destroy?
    update?
  end
end
