Rails.application.routes.draw do
  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'

  resources :categories
  resources :polls
  resources :votes
end
