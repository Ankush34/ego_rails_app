json.vehicle do
  json.user_name @vehicle.user.name
  json.user_email @vehicle.user.email
  json.vehicle_number @vehicle.number
  json.vehicle_registration_number @vehicle.registration_number
  json.latitude @vehicle.location.latitude
  json.longitude @vehicle.location.longitude
  json.status "updated"
end