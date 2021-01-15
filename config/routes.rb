Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/user', to: 'secrets#show'
  post '/user', to: 'sessions#create'
  post 'user/logout', to: 'sessions#destroy'
end
