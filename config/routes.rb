Rails.application.routes.draw do
  get '/register', to: 'readers#new', as: 'register'

  resources :readers
end
