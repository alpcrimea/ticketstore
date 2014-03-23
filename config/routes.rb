Ticketstore::Application.routes.draw do
  resources :departments

  resources :ticket_statuses

  get '/tickets/:id/reply', to: 'tickets#reply', as: 'reply_ticket'
  post '/tickets/:id/reply', to: 'tickets#reply', as: 'reply_ticket_update'
  get '/ticket/:url', to: 'home#view_ticket', as: 'view_ticket'
  post '/ticket/:url/reply', to: 'home#reply', as: 'user_reply_ticket'

  resources :tickets

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
