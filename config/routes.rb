Rails.application.routes.draw do
  resources :iscrivitis
  resources :iscriziones
  resources :cavallis
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'

  get '/index', to: 'home#index', as: 'index'
end
