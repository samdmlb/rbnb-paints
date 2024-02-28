Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: %i[edit update]

  resources :paints do
    resources :favorites, only: %i[create destroy]


    resources :bookings, only: [:create]
    collection do
      get "my_paints"
    end
  end

  resources :bookings, only: %i[index destroy]

  resources :favorites, only: [:index] do
    # Bouton Trash-ban sur l'index des favoris
    delete 'destroy_from_favorites', on: :member, to: 'favorites#destroy_from_favorites'
  end

    # Récupérer la liste des favoris d"un user
  get '/my_favorites', to: 'favorites#my_favorites'


end
