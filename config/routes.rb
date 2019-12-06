Rails.application.routes.draw do
  resources :attachments, only: [:index, :new, :create, :destroy]   
  # root "attachments#index" 
  get 'attachments/index'
  get 'attachments/new'
  post 'attachments/create'
  delete 'attachments/destroy'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end

 