# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                 adresses GET    /adresses(.:format)            adresses#index
#                          POST   /adresses(.:format)            adresses#create
#               new_adress GET    /adresses/new(.:format)        adresses#new
#              edit_adress GET    /adresses/:id/edit(.:format)   adresses#edit
#                   adress GET    /adresses/:id(.:format)        adresses#show
#                          PATCH  /adresses/:id(.:format)        adresses#update
#                          PUT    /adresses/:id(.:format)        adresses#update
#                          DELETE /adresses/:id(.:format)        adresses#destroy
#               pages_home GET    /pages/home(.:format)          pages#home
#

Rails.application.routes.draw do

  devise_for :users
  resources 'adresses'#, only: [:index, :show, :create, :new, :destroy, :edit]
  resources 'categories'#, only: [:index, :show, :create, :new, :destroy, :edit]
  resources 'subcategories'#, only: [:index, :show, :create, :new, :destroy, :edit]
  resources 'usecases'#, only: [:index, :show, :create, :new, :destroy, :edit]
  resources 'welcomegifs'#, only: [:index, :show, :create, :new, :destroy, :edit]
  get 'pages/home'
  get 'welcome/home'
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
