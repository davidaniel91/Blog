Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destory', as: 'signout'
  
  resources :sessions, only: [:create, :destroy]
  
  get 'sessions/create'

  get 'sessions/destory'

  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Change
end
