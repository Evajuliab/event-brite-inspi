Rails.application.routes.draw do
  
  get 'attendances/new'
  get 'attendances/index'
 
  root 'events#index'
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
resources :events
resources :users do
    resources :avatars, only: [:create]
  end
resources :attendances

end
