Rails.application.routes.draw do
  root 'contests#index'
  resources :contests
  resources :putters
end
