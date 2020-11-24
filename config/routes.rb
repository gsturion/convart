Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events, only: [ :index, :show ] do
    resources :artists, only: [ :index, :show ]
  end

  get "/map", to: "pages#map", as: :pages_map
end
