Rails.application.routes.draw do

  root "landing#index"

  get "/home" => "home#index"

  post "/" => "home#create"

  post "/comment" => "home#create_comment"

  delete "/remove/:id" => "home#destroy"

  get 'signup' => "users#new"

  post 'signup' => "users#create"

  get "login" => 'sessions#new'

  post "login" => 'sessions#create'

  get "/profile" => 'profile#index'

  delete "logout" => 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end