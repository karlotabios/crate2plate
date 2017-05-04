Rails.application.routes.draw do
	#get "/sign_up" => "devise/registrations#new", as: "new_user_registration"
  devise_for :users, controllers: { sessions: "users/sessions", confirmations: "users/confirmations", registrations: "users/registrations", passwords: "users/passwords", unlocks: "users/unlocks",  }
  root(to: "customers#index")
  resources :orders

  # namespace :admin do
  # 	# basic CRUD for admin side. Will revise because it's not that simple sa flow ng website mismo
  # 	resources :supplies
  # 	resources :orders
  # end
end
