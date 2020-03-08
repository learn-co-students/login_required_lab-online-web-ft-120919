Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'

  get '/secrets', to: 'secrets#show'

  post '/destroy', to: 'sessions#destroy'
end
