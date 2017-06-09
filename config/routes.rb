Rails.application.routes.draw do

  devise_for :users
  resources :companies
  resources :managers
  resources :properties
  resources :branches
  resources :proposals
  resources :lineitems

  root 'static_pages#home'
end
