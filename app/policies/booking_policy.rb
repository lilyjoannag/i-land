class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    @island = Island.find(@record.island_id)
    @record.user == user || @island.user_id == user.id
  end

  def edit
    @island = Island.find(@record.island_id)
    @island.user_id == user.id
  end

  def update?
    edit?
  end

  def destroy
    show?
  end
end
