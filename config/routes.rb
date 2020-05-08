Rails.application.routes.draw do
  get 'secrets/secrets'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secrets' => 'secrets#show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
