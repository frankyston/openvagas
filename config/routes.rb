# frozen_string_literal: true

require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"
  resources :companies, only: [:new, :edit, :update, :create]
  resources :positions do
    resources :applicants, only: [:index]
  end
  resources :applicants, only: [:new, :create]
  devise_for :users
  root "home#index"
  get "/vaga/:slug", action: :public_position, controller: :positions, as: :public_position
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
