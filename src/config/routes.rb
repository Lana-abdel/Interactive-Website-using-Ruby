=begin 
#Project name: Assignment-2  
#Description: Creating a domestic violence awareness 
web application with an interactive quiz
#Filename: routes.rb
#Description: This file helps define paths by telling the 
rails server how incoming requests are sent to which controller and method
#Last modified on: 03-24-2022
=end 

# frozen_string_literal: true
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  resources :helpquizzes
  resources :lawquizzes
  resources :statsquizzes
  resources :quiz1s
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # The root page, e.g. www.example.com/, is sent here
  # root 'controller#method_in_controller' 

  #added two routes
  root 'home#index'
  get 'home/DV'
  get 'home/testimonies'
  get 'home/resources'
  # Devise authentification pages. This controlls the user login
  # and authentification system.
  devise_for :users

  # Examples:
  #
  # # Add app CRUD operations from a controller. Used with scaffolding.
  # # CRUD -> create (API/POST), new (page/GET), index, show,
  #           edit(page/GET), update(API/PATCH|PUT), destroy(API/DELETE)
  # resources :my_controller
  #
  # # Add GET path for photos controller, index method
  # get 'photos/index'
  #
  # # Resources, but only register these methods
  # resources :photos, only: [:index, :new, :create, :destroy]
  #
  # # Add PUT path for the given url, but send it to a different controller
  # # than rails would assume by the name. to: 'controller#method_name'.
  # # It would have extected to: 'add_tags#add', which would fail
  # put '/add_tags/add', to: 'users#add_tags'
end