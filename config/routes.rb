Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :paints, except:[:destroy] do
    resources :bookings, only: [:create]
    collection do
      get "my_paints"
    end
  resources :bookings, only:[:index, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
