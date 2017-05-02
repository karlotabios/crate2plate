Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root(to: "customers#index")

  # namespace :admin do
  # 	# basic CRUD for admin side. Will revise because it's not that simple sa flow ng website mismo
  # 	resources :supplies
  # 	resources :orders
  # end
end
