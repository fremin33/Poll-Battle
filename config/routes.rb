Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  get 'votes/create'

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
end
