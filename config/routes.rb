Rails.application.routes.draw do
  root to: 'home#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'students' => 'students#index'
  get 'profile' => 'users#show'
  get 'profile/edit' => 'users#edit'
  post 'profile/edit' => 'users#update'
  resources :students do
    member do
      post "add", to: "favorites#create"
    end
    member do
      get "show_review", to: "reviews#show"
      get "review", to: "reviews#new"
      post "review", to: "reviews#create"
    end
  end
  resources :products
  resources :favorites, only: [:destroy]
  resources :clients
  resource :user, :path => :profile,  shallow: true do
    resource :appeal
  end
  resources :rooms
end
