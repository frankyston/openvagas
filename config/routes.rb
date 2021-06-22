# frozen_string_literal: true

Rails.application.routes.draw do
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
