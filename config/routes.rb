Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "pages#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :show, :create, :edit, :update , :destroy ]
  resources :trips, only: [ :index, :show, :new, :create ] do
    # resources :trip_activities, only: [ :new, :create, :index ]
    resources :bookings, only: [ :new, :create, :index, :show ]
    resources :tasks, only: [ :new, :create, :index ]
    resources :activities, only: [:index]
  end
  resources :tasks, only: [ :show ]

  resources :activities, only: [ :new, :create, :index, :show ]
end
