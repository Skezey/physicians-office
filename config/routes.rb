Rails.application.routes.draw do
  root 'patients#index'
  resources :physicians do
    resources :appointments
  end
  resources :patients

end
