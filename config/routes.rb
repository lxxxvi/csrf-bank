Rails.application.routes.draw do
  get 'login'  => 'sessions#new'     , as: 'login'
  get 'logout' => 'sessions#destroy' , as: 'logout'
  post 'login' => 'sessions#create'  , as: 'sessions'

  root 'users#show'
  resources :users do
    resources :tranzactions
  end
end
