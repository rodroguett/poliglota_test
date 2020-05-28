Rails.application.routes.draw do

  root 'courses#index'

  resources :sessions, except: [:new, :edit, :delete]
  resources :courses
  resources :professors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
