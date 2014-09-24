Rails.application.routes.draw do
  resources :the_teams

  resources :abouts

  resources :portfolios

  resources :users

  #get 'users/new'

  root 'home#index'
  match '/signup',  to: 'users#new',   via: 'get'

=begin
these guys are way ahead of their time  
  match '/help',    to: 'home#help',   via: 'get'
  match '/about',   to: 'home/about',  via: 'get'
  match 'contact',  to: 'home/contact', via: 'get'
=end
  
end
