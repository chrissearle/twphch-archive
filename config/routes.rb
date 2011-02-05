TwphchArchive::Application.routes.draw do
  resources :about
  resources :best_of
  resources :rounds
  resources :first_year

  root :to => 'rounds#index'
end
