Rails.application.routes.draw do

  root 'carts#index'

  resources :carts, only: [ :index, :destroy] do
    resources :items, only: [:index, :destroy] do
      member do
        post :change_quantity
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
