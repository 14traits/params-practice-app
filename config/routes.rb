Rails.application.routes.draw do
# Gets
get "/things" => "things#index"
get "/things/:id" => "things#find_thing"
get "/home/:wildcard" = "things#home"

# Posts
post "/things" => "things#create"

# Patch
patch "things/:id" => "things#update"

# Delete
delete "things/:id" => "things/destroy"
end
