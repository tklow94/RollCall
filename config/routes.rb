Rails.application.routes.draw do
  root 'students#home'
  get 'signup', to: 'students#new'
  resources :students, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :courses
end
