Rails.application.routes.draw do

  resources :critters, only: [:index, :show]
  resources :collections

  get ':name', to: 'types#show', as: :type
  root to: "pages#home"
end
