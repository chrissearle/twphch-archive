# coding: UTF-8

TwphchArchive::Application.routes.draw do

  match "/colour" => "colour#index", :as => :colour

  resources :about
  resources :best_of
  resources :rounds
  resources :first_year
  resources :images
  resources :blogs

  root :to => 'rounds#index'
end
