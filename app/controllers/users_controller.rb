class UsersController < ApplicationController
	def index
		if(request.env["HTTP_FLTRS"].present?)
			arr = request.env["HTTP_FLTRS"].split(" ")
			user_locations = Location.where(s2_region_id: {"$in": arr})
			@users = user_locations.to_a.map{|user_location| user_location.user if user_location.user.present? && user_location.user.user_type.eql?("ServiceSeeker")}
			@users.compact!
		else
			@users = User.build_criteria(params)		
		end
		respond_to do |format|
		 	format.json do
		 		request.env["HTTP_FLTRS"].present? ? render("filtered_index.json.jbuilder") : render("index.json")
		 		return
		 	end
		 	format.html do
		 		render 'index'
		 	end
		end
	end

	def update_user_from_api
		if(current_user.update_attributes(user_params))
			respond_to do |format|
		  	format.json { render "updated.json" }
		  	format.html { redirect_to vehicles_path, notice: 'user was successfully updated.' }
      end
		else
			respond_to do |format|
				format.json { render json: user.errors, status: :unprocessable_entity }
				format.html { render :edit }
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
      params.require(:user).permit(:name, :email, :contact_no, :password, :user_type, :pubsub_channel, :location_attributes => [:longitude, :latitude, :start_location_latitude, :start_location_longitude, 
     	:end_location_latitude, :end_location_longitude, :route, :s2_region_id])
    end
end
