Rails.application.routes.draw do

  	resources :users
  	resources :rides
  	resources :attractions

  	root to: 'welcome#home'
	get    '/signin',   to: 'sessions#new'
	post   '/signin',   to: 'sessions#create'
    delete '/signout',  to: 'sessions#destroy'

  	



end