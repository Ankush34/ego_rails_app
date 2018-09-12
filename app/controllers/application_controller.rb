class ApplicationController < ActionController::Base
  include Pundit
  include ApplicationHelper
  before_action :authenticate_user!
  before_action :set_current_user
  
	def after_sign_in_path_for(resource_or_scope)
    users_path
	end

	def verify_authorized?
    !devise_controller?
  end

 def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { render json: {error: "You are not authorized to access this page"}, status: 403 }
    end
  end

	def set_current_user
    binding.pry
    id = current_user.present? ? current_user.id.to_s : nil
    RequestStore.store[:current_user_id] = id
  end


end
