Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :phones
  resources :addresses
  resources :contacts
  resources :kinds
  resources :acessos
  resources :homes
  # resources :kinds, only: [:edit]
  # resources :kinds, except: [:edit,:destroy]
  get 'node_red/index'
  get 'node_red/authenticate'
  # get 'authenticate', to: 'auth#authenticate'

  # get 'pagina2', to: 'kinds#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  
  # Defines the root path route ("/")
  root "homes#index"
end
