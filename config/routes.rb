Rails.application.routes.draw do
  root to: 'public#show'
  devise_for :users
  resources :catagories do
    resources :plans
  end

  resources :settings
  resources :photos
  resources :images
end
