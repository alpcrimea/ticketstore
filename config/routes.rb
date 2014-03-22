Ticketstore::Application.routes.draw do
  resources :ticket_statuses

  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end