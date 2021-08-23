Rails.application.routes.draw do
  get 'areas/index'
  devise_for :users
  root to: "areas#index"
  resources :areas, only: :index do
     collection do
       get 'find'
     end
  end
  resources :posts, only: [:index, :new, :create, :show] do
  end
end
