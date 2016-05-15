Rails.application.routes.draw do
  # root to: 'pages#home'
  resources :movies do
    resources :reviews, only: [:create, :update, :destroy]
  end
end
