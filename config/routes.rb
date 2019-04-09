Rails.application.routes.draw do
  root 'contests#index'
  resources :contests do
    get 'remove_enrollment'
  end
  resources :putters
end
