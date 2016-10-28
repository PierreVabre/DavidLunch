Rails.application.routes.draw do
	
  devise_for :users
  resources 'adresses'#, only: [:index, :show, :create, :new, :destroy, :edit]
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
