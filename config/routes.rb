Rails.application.routes.draw do

	root to: "home#index"
  get 'home/index'

  devise_for :students
  devise_for :teachers

  resources :students
  resources :teachers
  resources :courses
  root to: "teacher#index"
end
