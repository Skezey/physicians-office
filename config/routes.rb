Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'patients#index'
  resources :physicians do
    resources :appointments
  end
  resources :patients do
    resources :appointments
  end

end
