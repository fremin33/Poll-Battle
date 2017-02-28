Rails.application.routes.draw do
  get 'votes/new'

  get 'votes/create'

  get 'polls/index'

  get 'polls/show'

  get 'categories/index'

  get 'categories/show'

  devise_for :users
  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
