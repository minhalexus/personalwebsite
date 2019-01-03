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


  #############################MESSAGE ROUTES ###########################
  post '/messages/new', to: 'pages#create_message', as:'message_create'
  get 'messages', to: 'pages#list_messages'
  get 'messages/:id', as: 'message', to: 'pages#show_message'



  ############################NEWSLETTER EMAIL LIST ####################
  post 'addingemail', to: 'pages#add_email_to_list', as:'add_email'



###############################API ###################################
  get 'json', as:'json', to: 'api#index'
  get 'temp', as:'temp', to: 'api#temp'



end
