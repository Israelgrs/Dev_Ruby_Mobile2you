Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :events_participations
  resources :awards
  resources :registrations
  devise_for :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
