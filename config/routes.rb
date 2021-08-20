Rails.application.routes.draw do
  get 'areas/index'
  devise_for :users
  root to: "areas#index"
  resources :areas, only: :index do
     collection do
       get 'find'
     end
  end
end
