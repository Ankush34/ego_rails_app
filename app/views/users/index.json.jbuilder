json.array! @users do |user|
	json.id  user.id 
	json.name user.name
	json.email user.email
	json.contact_no user.contact_no
	json.latitude user.location.latitude
	json.longitude user.location.longitude
end

