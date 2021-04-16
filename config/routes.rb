Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/users" => "users#index"
    get "/alignments" => "alignments#index"
    post "/alignments" => "alignments#create"
    get "/alignments/:id" => "alignments#show"
    patch "/alignments/:id" => "alignments#update"
    delete "/alignments/:id" => "alignments#destroy"

    get "/languages" => "languages#index"

    get "/characters" => "characters#index"
    post "/characters" => "characters#create"
    get "/characters/:id" => "characters#show"
    patch "/characters/:id" => "characters#update"
    delete "/characters/:id" => "characters#destroy"
  end
end
