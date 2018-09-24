class UsersController < ApplicationController
	def index
		@users = User.build_criteria(params)
		respond_to do |format|
		 	format.json do
		 		render  "index.json"
		 		return
		 	end
		 	format.html do
		 		render 'index'
		 	end
		end
	end

	def create_user_from_api
		@user_new = User.new
		@user_new.assign_attributes(user_params)
		@user_new.confirmed_at = Time.now
		@user_new.skip_confirmation!
		@user_new.save
		@users = User.all
		if(@user_new.save)
			render json: {status: "Successfully Registered"}
		else
			render json: {status: "Clould not register user" , errors: @user_new.errors }				
		end
	end

	def user_params
      params.require(:user).permit(:name, :email, :contact_no, :password)
    end
end
