Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
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

    get "/characters" => "characters#index"
    post "/characters" => "characters#create"
    get "/characters/:id" => "characters#show"
    patch "/characters/:id" => "characters#update"
    delete "/characters/:id" => "characters#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"
  end
end
