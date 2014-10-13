class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def update?
    @user.present? && (@record.user == @user || @user.admin?)
  end
end

