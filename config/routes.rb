Rails.application.routes.draw do
  devise_for :users
  get 'index/index'
  resources :products

  root 'index#index'

  # === Carrinho
  get 'cart' => 'cart#index'
  post 'cart/add/:id' => 'cart#add_item', as: :add_item_to_cart
  post 'cart/remove/:id' => 'cart#remove_item', as: :remove_item_from_cart
end
