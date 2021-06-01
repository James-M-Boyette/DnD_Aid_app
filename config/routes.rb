Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    # get "/users" => "application#show"
    get "/users/current_user/" => "users#show"
    patch "/users/current_user/" => "users#update"
    delete "/users/current_user/" => "users#destroy"
    # get "/users/:id" => "users#show"
    # patch "/users/:id" => "users#update"
    # delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/characters" => "characters#index"
    post "/characters" => "characters#create"
    get "/characters/:id" => "characters#show"
    patch "/characters/:id" => "characters#update"
    delete "/characters/:id" => "characters#destroy"

    get "/alignments" => "alignments#index"
    post "/alignments" => "alignments#create"
    get "/alignments/:id" => "alignments#show"
    patch "/alignments/:id" => "alignments#update"
    delete "/alignments/:id" => "alignments#destroy"

    get "/languages" => "languages#index"
    post "/languages" => "languages#create"
    get "/languages/:id" => "languages#show"
    patch "/languages/:id" => "languages#update"
    delete "/languages/:id" => "languages#destroy"

    get "/equipments" => "equipments#index"
    # post "/equipments" => "equipments#create"
    get "/equipments/:id" => "equipments#show"
    # patch "/equipments/:id" => "equipments#update"
    # delete "/equipments/:id" => "equipments#destroy"

    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
    patch "/images/:id" => "images#update"
    delete "/images/:id" => "images#destroy"
  end
  get "*path" => "application#index"
end
