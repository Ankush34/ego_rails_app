json.current_user do
  json.user_name current_user.name
  json.user_email current_user.email
  json.status "updated"
end