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

  root to: "home#index"

end
