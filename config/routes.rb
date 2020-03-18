Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/secret' => 'secrets#show', as: 'secret'
  get '/session' => 'sessions#new', as: 'login'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
