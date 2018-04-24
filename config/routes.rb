Rails.application.routes.draw do

  get 'home/index'

  devise_for :teachers, :controllers => {registrations: 'registrations'}

  resources :students
  resources :teachers
  resources :courses
  resources :assignments
  authenticated :teacher do
    root to: 'teachers#show', as: :authenticated_root
  end
  resources :student_courses
  post 'student_course', to: 'student_courses#add_to_course'
  root to: "home#index"

end
