Rails.application.routes.draw do
  devise_for :users, 
    path: 'auth',
    controllers:
      {
        sessions: 'auth/sessions',
        passwords: 'auth/passwords',
      }

  devise_scope :user do
    get 'login', to: 'auth/sessions#new'
    get 'forgot_password', to: 'auth/passwords#new'
    get 'reset_password', to: 'auth/passwords#edit'
  end

  root to: "dashboard#index"
  get '/dashboard', to: "dashboard#index",  as: "dashboard"
  resources :users, except: [:show]
  resources :tenants
  resources :apartments, except: [:show]
  resources :paiements, except: [:show]

  get '/profile/:id', to: "profile#edit", as: "user_profile"
  put '/profile/:id', to: "profile#update", as: "update_profile"
end
