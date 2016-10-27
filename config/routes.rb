Rails.application.routes.draw do
	
  resources 'adresses', only: [:index, :show, :create, :new, :destroy]
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
