Rails.application.routes.draw do

  devise_for :users
  resources :lists do
    resources :items, except: :index
  end
  root to: 'visitors#index'
end
