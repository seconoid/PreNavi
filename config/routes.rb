Rails.application.routes.draw do
  root to: 'home#index'
  get 'signup' => 'students#new'
  resources :students
end
