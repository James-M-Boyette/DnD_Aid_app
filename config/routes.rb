Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/alignments" => "alignments#index"
    get "/alignments" => "alignments#index"
    post "/alignments" => "alignments#create"
    get "/alignments/:id" => "alignments#show"
    patch "/alignments/:id" => "alignments#update"
    delete "/alignments/:id" => "alignments#destroy"
  end
end
