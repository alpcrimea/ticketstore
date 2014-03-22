Ticketstore::Application.routes.draw do
  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end