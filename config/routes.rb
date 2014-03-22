Ticketstore::Application.routes.draw do
  resources :departments

  resources :ticket_statuses

  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end