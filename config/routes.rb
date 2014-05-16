Stori::Application.routes.draw do
  resources :stories do
  get 'search', on: :collection
  end
  devise_for :users
  resources :dashboard, :stories
  
  root to: "home#index"
#      Prefix Verb   URI Pattern                    Controller#Action
#                  stories GET    /stories(.:format)             stories#index
#                          POST   /stories(.:format)             stories#create
#                new_story GET    /stories/new(.:format)         stories#new
#               edit_story GET    /stories/:id/edit(.:format)    stories#edit
#                    story GET    /stories/:id(.:format)         stories#show
#                          PATCH  /stories/:id(.:format)         stories#update
#                          PUT    /stories/:id(.:format)         stories#update
#                          DELETE /stories/:id(.:format)         stories#destroy
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
#          dashboard_index GET    /dashboard(.:format)           dashboard#index
#                          POST   /dashboard(.:format)           dashboard#create
#            new_dashboard GET    /dashboard/new(.:format)       dashboard#new
#           edit_dashboard GET    /dashboard/:id/edit(.:format)  dashboard#edit
#                dashboard GET    /dashboard/:id(.:format)       dashboard#show
#                          PATCH  /dashboard/:id(.:format)       dashboard#update
#                          PUT    /dashboard/:id(.:format)       dashboard#update
#                          DELETE /dashboard/:id(.:format)       dashboard#destroy
#                     root GET    /                              home#index
end
