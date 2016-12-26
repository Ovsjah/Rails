Blogger::Application.routes.draw do
  root to: 'articles#index'  # changes the default root
  resources :articles do
    resources :comments
  end    # creates resource articles that follows the RESTful model of web interaction and make resource comments to be its sub-resource
end
