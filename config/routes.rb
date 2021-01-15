Rails.application.routes.draw do
  root 'students#home'
  get 'signup', to: 'students#new'
  resources :students, except: [:new, :destroy]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :courses
  post 'course_enroll', to: 'student_courses#create'
end
