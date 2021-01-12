Rails.application.routes.draw do
  root 'students#home'
  get 'signup', to: 'students#new'
  resources :students, except: [:new]
end
