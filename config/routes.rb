Rails.application.routes.draw do
  get 'sessions/new', to: 'sessions#new'

  get 'sessions/home', to: 'secrets#show'

  post 'sessions/create', to: 'sessions#create'

  delete 'sessions/delete', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
