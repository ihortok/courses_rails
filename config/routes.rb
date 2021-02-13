Rails.application.routes.draw do
  devise_for :users

  root to: 'courses#index'

  resources :courses

  namespace :curator do
    root to: 'courses#index'
    resources :courses
  end
end
