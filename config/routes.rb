Rails.application.routes.draw do
  get 'votes/create'

  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'

  resources :categories
  resources :polls

end
