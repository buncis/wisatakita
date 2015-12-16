Rails.application.routes.draw do
  resources :berita
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :guides
  devise_for :admins
  resources :wisata
  devise_for :users
  root 'static_pages#home'
  resources :reviews
end
