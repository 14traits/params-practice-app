Rails.application.routes.draw do
  # Gets
  get "/things" => "things#index"
  get "/things/:id" => "things#find_thing"
  get "/things/home/:wildcard" => "things#home"

  # Posts
  post "/things" => "things#create"
  post "/things/home/" => "things#emoh"

  # Patch
  patch "things/:id" => "things#update"

  # Delete
  delete "things/:id" => "things#destroy"
end
