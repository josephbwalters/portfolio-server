Rails.application.routes.draw do
  get 'user_sessions/create'
  get 'user_sessions/destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'users#index'
  resources :users
end
