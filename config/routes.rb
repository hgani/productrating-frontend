Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Glib::Web::Engine => '/glib'

  root 'home#index'

  resources :products do
    resources :purchases
  end

  resources :reviews
  resources :stores
end
