Rails.application.routes.draw do
  get 'groups/index'
  get 'groups/new'
  get 'entities/index'
  get 'entities/new'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
