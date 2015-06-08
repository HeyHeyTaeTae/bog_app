Rails.application.routes.draw do
  # the index route for bog_app
  root to: "creatures#index"

  # RESTful all creatures route
  get "/creatures", to: "creatures#index", as: "creatures"

  # RESTful creation form route
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  
  # RESTful grab specific creature route
  get "/creatures/:id", to: "creatures#show", as: "creature"

  # RESTful edit route for specific creature
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"

  # RESTful creation route
  post "/creatures", to: "creatures#create"

  #Restful update route for specific creature
  patch "/creatures/:id", to: "creatures#update"
end
