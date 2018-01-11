Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  # User keys in '/home'. to: <controller>#<action>
  get '/home', to: 'pages#home'
  get '/contactme', to: 'pages#contactme'

  resources :users, only: [:new, :create, :index]

end
