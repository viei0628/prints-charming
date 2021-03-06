Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :printers, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:index, :new, :create]
    resources :reviews, only: [:show, :new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]

  get "/bookings", to: "bookings#my_bookings", as: :my_bookings
  get "/my_printers", to: "printers#my_printers", as: :my_printers
end
