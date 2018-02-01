Rails.application.routes.draw do
  devise_for :users
  root 'beds#index'
end
