Ticketstore::Application.routes.draw do
  resources :departments

  resources :ticket_statuses

  get '/tickets/:id/reply', to: 'tickets#reply', as: 'reply_ticket'
  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
