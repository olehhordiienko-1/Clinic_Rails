Rails.application.routes.draw do
  devise_for :users, controllers: { passwords: 'passwords' }
  resources :departments
  resources :specializations
  resources :doctors
  resources :patients
  resources :patient_cards

  get '/root', to: 'root#index'

  devise_scope :deviseuser do
    get "sign_up", to: "devise/registrations#new"
    get "sign_in", to: "devise/sessions#new"
    get "sign_out", to: "devise/sessions#destroy"
  end
end
