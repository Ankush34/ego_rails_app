class UserPolicy < ApplicationPolicy

  def index?
    binding.pry
    return true
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    return true
  end

  def create_user_from_api?
    return true
  end
  
  def permitted_attributes params={}
    attrs = [:name, :email]
  end

end
