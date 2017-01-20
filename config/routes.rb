Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'home#index'
  get 'signup' => 'students#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'students' => 'students#index'
  get 'signup_client' => 'clients#new'
  get 'profile' => 'clients#show'
  resources :students do
    member do
      post "add", to: "favorites#create"
    end
  end
  resources :products
  resources :favorites, only: [:destroy]
  resource :client
end
