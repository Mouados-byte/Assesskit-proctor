Rails.application.routes.draw do
  get 'register/candidate', to: 'register#candidate'

  get 'profile/profile', to: 'profile#profile'
  get 'profile/team', to: 'profile#team'
  get 'customer/candidates', to: 'candidates#index'
  get 'customer/candidates/1', to: 'candidates#show'
  get 'customer/assessments', to: 'assessments#index'
  get 'customer/assessments/new', to: 'assessments#new'
  get 'customer/assessments/1', to: 'assessments#show'
  get 'customer/assessments/1/candidates/1', to: 'assessments#candidate'
  get 'register/customer', to: 'register#customer'

  get 'login', to: 'login#index'
  get 'contact', to: 'contact#index'
  get 'about', to: 'about#index'
  get 'home', to: 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end
