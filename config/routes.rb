Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :islands, only: [:index, :show, :new, :edit, :update, :create] do
    resources :bookings, only: [:create]
  end
  resources :users do
    resources :bookings, only: [:index, :show, :edit, :update]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
