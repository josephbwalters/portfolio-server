Rails.application.routes.draw do
  resources :users

  get 'user_sessions/create'
  get 'user_sessions/destroy'
  get 'login' => 'user_sessions#create', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout
end
