Blogger::Application.routes.draw do

  root to: 'articles#index'  # changes the default root
  resources :articles do
    resources :comments
  end    # creates resource articles that follows the RESTful model of web interaction and make resource comments to be its sub-resource
  resources :tags
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ] # creates smaller set of actions

  get 'login' => 'author_sessions#new'  # login_path, login_url
  get 'logout' => 'author_sessions#destroy'  # logout_path, logout_url
end
