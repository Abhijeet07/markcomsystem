Rails.application.routes.draw do
	resources :users,format: 'js'
  # get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
   # post "users"            => "users#index"
end
