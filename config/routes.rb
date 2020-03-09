Rails.application.routes.draw do
  root 'sessions#new'
  #Visit root of app and be redirected to login page

  post '/login', to: 'sessions#create' 
  #This is where user_id gets set, or user gets redirected to login

  post '/delete', to: 'sessions#destroy'

  get '/secrets', to: 'secrets#show'
  #This is the user homepage, contains link to secret page
  #Redirect to login if user is not logged in

end
