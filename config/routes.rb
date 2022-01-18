Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  resources :prs
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'store#index', as: 'store'
  resources :products do
    get :who_bought, on: :member
  end
end
