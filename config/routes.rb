Rails.application.routes.draw do
  resources :accounts
  resources :homes
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_for :admins, controllers: {
    sessions: 'amins/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
end
