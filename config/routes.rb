Rails.application.routes.draw do
  resources :problems
  resources :projects
  devise_for :users

  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
  	get 'users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'pages#index'
end
