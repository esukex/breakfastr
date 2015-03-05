Rails.application.routes.draw do
	root "pastries#index"
	resources :pastries, only: [:index, :show]
	resource :session, only: [:new, :edit, :create]
	resources :users, except: [:show, :index] do
		resources :pastries, except: [:index, :show]
	end
end