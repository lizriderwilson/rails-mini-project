Rails.application.routes.draw do

  resources :critters

  get ':name', to: 'types#show', as: :type
  root to: "pages#home"
end
