Rails.application.routes.draw do
	root to: "home#index"
  get 'home/index'

  resources :students
  resources :teachers
  resources :courses
end
