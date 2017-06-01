Rails.application.routes.draw do

  devise_for :users
  resources :companies
  resources :managers
  resources :properties
  resources :branches
  resources :proposals
  resources :proposal_items

  root 'static_pages#home'
end
