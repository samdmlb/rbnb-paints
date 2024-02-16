Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :paints do
    resources :bookings, only: [:create]
    collection do
      get "my_paints"
    end
  end
  resources :bookings, only:[:index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
