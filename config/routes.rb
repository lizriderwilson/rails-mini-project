Rails.application.routes.draw do
  
  resources :users, only: [:index, :create, :show, :edit, :update]
  get 'signup', to: 'users#new'

  resources :critters

  get ':name', to: 'types#show', as: :type
  root to: "pages#home"
end
