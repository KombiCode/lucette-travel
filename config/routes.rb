Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [ :show, :edit, :destroy ]
  resources :trips, only: [ :index, :show ] do
    # resources :trip_activities, only: [ :new, :create, :index ]
    resources :bookings, only: [ :new, :create, :index, :show ]
    resources :to_dos, only: [ :new, :create, :index, :show ]
  end
  resources :activities, only: [ :new, :create, :index, :show ]
end
