class VehiclesController < ApplicationController
	before_action :set_user

	def index
		@vehicles = @user.vehicles.reverse
		respond_to do |format|
	  	format.json { render "index.json", status: :created }
	  	format.html { redirect_to vehicles_path, notice: 'Vehicles were found successfully.' }
    end
	end

	def new
	end

	def create
		vehicle = Vehicle.new()
		vehicle.assign_attributes(vehicle_params)
		@user.vehicles << vehicle
		if(vehicle.save)
			respond_to do |format|
		  	format.json { render "created.json", status: :created }
		  	format.html { redirect_to vehicles_path, notice: 'Vehicle was successfully created.' }
      end
		else
			respond_to do |format|
				format.json { render json: vehicle.errors, status: :unprocessable_entity }
				format.html { render :new }
     	end
		end
	end

	def delete
	end

	def edit
	end

	def update
		if(@vehicle.update_attributes(vehicle_params))
			respond_to do |format|
		  	format.json { render "updated.json", status: :created }
		  	format.html { redirect_to vehicles_path, notice: 'Vehicle was successfully updated.' }
      end
		else
			respond_to do |format|
				format.json { render json: @vehicle.errors, status: :unprocessable_entity }
				format.html { render :edit }
     	end
		end
	end

	def set_user
		if(params[:email].present?)
			@user = User.find_by(email: params[:email]);
		elsif params[:id].present?
			if(params[:action] == "update")
				@vehicle = Vehicle.find(params[:id])
			else
				@user = User.find(params[:id])
			end
		end
	end

	def vehicle_params
    params.require(:vehicle).permit(:number, :registration_number, :city, :state,
     :vehicle_type)
	end
end
