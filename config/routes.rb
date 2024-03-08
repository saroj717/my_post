Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'static_pages#index'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#index'
  post '/users', to: 'users#create'
  # get '/users', to: 'users#index'

end
