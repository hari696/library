Rails.application.routes.draw do


  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :books do
		resources :comments
	end

	root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end