Rails.application.routes.draw do
  root to: 'home#index'
  get 'signup' => 'users#new'
  get 'student_signup' => 'students#new'
  get 'client_signup' => 'client#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'students' => 'students#index'
  get 'profile' => 'clients#show'
  resources :students do
    member do
      post "add", to: "favorites#create"
    end
  end
  resources :products
  resources :favorites, only: [:destroy]
  resource :client
  resources :users
end
