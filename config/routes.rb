Rails.application.routes.draw do
  devise_for :users
  root :to => "pages#show", :id => 'home'
  resources :bookings
  resources :pages do
    resources :photos, only: :create
  end
  resources :contacts, only: [:new, :create]
end
