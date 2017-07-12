Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/show'

  devise_for :users

root :to => 'welcome#index'

resources :products do
  resources :reviews

  end
end
