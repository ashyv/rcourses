Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  resources :students
  resources :teachers
  resources :courses
  root to: "teacher#index"
end
