Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", confirmations: "users/confirmations", registrations: "users/registrations", passwords: "users/passwords", unlocks: "users/unlocks",  }
  root(to: "pages#index")
  get("/admin", to: "admin/pages#index")
  resources :orders

  namespace :admin do
  	resources :supplies
  	resources :orders
  	get("/customers", to: "admin/users#list")
  end
end
