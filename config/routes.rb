Rails.application.routes.draw do
  devise_for :users
  root 'patients#index'
  resources :physicians do
    resources :appointments
  end
  resources :patients

end
