Rails.application.routes.draw do
  # get 'home/index'
  devise_for :admin_users
      resources :projects
        get 'projects/about'
        root 'home#index'


      namespace :admin do
        resources :projects
      end



  # devise_scope :admin_users do
    #  get '/admin_users/sign_out' => 'devise/sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "students" to: ''

  # Defines the root path route ("/")
  # get "home#about"
end
