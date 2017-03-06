Rails.application.routes.draw do
  get 'votes/create'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'

  resources :categories
  resources :polls
  resources :responses do
    resources :votes
  end
end
