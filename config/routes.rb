Rails.application.routes.draw do

  get 'home/index'

  devise_for :students
  devise_for :teachers

  # resources :students
  get '/students', to: "students#show", as: 'student'
  resources :teachers
  resources :courses
  authenticated :teacher do
    root to: 'teachers#index', as: :authenticated_root
  end

  root to: "home#index"

end
