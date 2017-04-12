Rails.application.routes.draw do

  devise_for :users
	resources :companies
	resources :managers
	resources :properties

	root 'companies#index'
end
