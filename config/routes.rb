Rails.application.routes.draw do
  get 'orders/new'

  get 'orders/show'

	root "pastries#index"
	resources :pastries do
		resources :orders, only: [:new, :create, :show]
	end
	resource :session, only: [:new, :edit, :create]
	resources :users, except: [:show, :index] do
		resources :pastries, only: [:index]
	end
end