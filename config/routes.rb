Rails.application.routes.draw do
  get 'polls/user'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
  root to: 'polls#index'

  resources :categories
  resources :polls do
    resources :reviews, only: [ :new, :create ]
  end
  resources :responses do
    resources :votes
  end
  resources :follows, only: [:new, :create]
end
