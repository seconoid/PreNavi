Rails.application.routes.draw do
  root to: 'home#index'
  get 'signup' => 'students#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'students' => 'students#index'
  resources :students
end
