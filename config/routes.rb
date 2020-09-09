Rails.application.routes.draw do
  devise_for :users
  # devise_scope :user do
  #   get 'users/sign_out' => 'devise/sessions#destroy'
  # end 

  get 'donhang/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :saches
  resources :donhangs
  root 'saches#index'
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    get "signout" => "devise/sessions#destroy" 
  end

get 'saches/:id', to: 'saches#show', as:"chitiet"
get 'saches/index' => 'saches#index'
get 'dathang/dathang' => 'donhang#order', as: "order" 
get 'dathang/dathangngay/:id',to: 'donhang#create', as: "order_now" 
get 'cart/index' => 'cart#load_cart' , as: "view_cart"
get 'cart/add_to_cart/:id', to: 'cart#add_to_cart', as: 'add_to_cart'
delete 'cart/remove_from_cart/:id', to: 'cart#remove_from_cart', as: 'remove_from_cart'
get 'users/view_orders', to: 'donhang#view_oders', as: 'view_orders'
get 'users/view_info', to: 'users#view_info', as: 'view_info'
end
