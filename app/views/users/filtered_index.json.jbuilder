json.total_users do
	json.array! @users do |user|
		json.id  user.id 
		json.name user.name
		json.email user.email
		json.contact_no user.contact_no
		json.start_location_latitude user.location.start_location_latitude
		json.start_location_longitude user.location.start_location_longitude
		json.end_location_latitude user.location.end_location_latitude
		json.end_location_longitude user.location.end_location_longitude
		json.latitude user.location.latitude
		json.longitude user.location.longitude
		json.pickup_location user.location.pickup_location
		json.drop_location user.location.destination_location
	end
end