Rails.application.routes.draw do

  devise_for :users
	resources :companies
	resources :managers

	root 'companies#index'
end
