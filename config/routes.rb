# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :events_participations
  resources :awards
  resources :inscriptions
  devise_for :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
