Rails.application.routes.draw do
  devise_for :guides
  devise_for :admins
  resources :wisata
  devise_for :users
  root 'static_pages#home'
  resources :reviews
end
