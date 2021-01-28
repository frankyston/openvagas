Rails.application.routes.draw do
  get 'applicants/index'
  get 'applicants/new'
  resources :companies, only: [:new, :edit, :update, :create]
  resources :positions
  resources :applicants, only: [:index, :new, :create]
  devise_for :users
  root "home#index"
  get "/vaga/:slug", action: :public_position, controller: :positions, as: :public_position
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
