Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", confirmations: "users/confirmations", registrations: "users/registrations", passwords: "users/passwords", unlocks: "users/unlocks",  }
  root(to: "pages#index")
  get("/admin", to: "admin/pages#index")
  resources :orders

  namespace :admin do
  	resources :deliveries
  	resources :supplies
    resources :products
  	resources :orders
    get("/users/resolve/:id", to: "users#resolve_new", as: "user_resolve")
    get("/users/sign_up", to: "users#sign_up", as: "user_sign_up")
    get("/orders/up/:id", to: "orders#move_status_up", as: "order_status_up")
    get("/orders/down/:id", to: "orders#move_status_down", as: "order_status_down")
    get("/orders/cancel/:id", to: "orders#cancel_order", as: "order_status_cancel")
    get("/users/block/:id", to: "users#block", as: "user_block")
    get("/users/resolve_unregistered/:id", to: "users#resolve_new_unregistered", as: "user_resolve_unregistered")
  	get("/users", to: "users#index")
  end
end
