Rails.application.routes.draw do
  devise_for :users
  
  # Defines the root path route ("/")
  root 'users#index'
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users
    
  resources :groups do
    resources :entities
  end
end
