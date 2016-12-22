Blogger::Application.routes.draw do
  root to: 'articles#index'  # changes the default root
  resources :articles    # creates resource articles that follows the RESTful model of web interaction
end
