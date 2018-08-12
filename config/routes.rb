Rails.application.routes.draw do
  resources :projects
  devise_for :users

  devise_scope :user do
  	get 'login', to: 'devise/sessions#new'
  end


  root to: 'projects#index'
end
