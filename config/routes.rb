Rails.application.routes.draw do
root :to => 'welcome#index'

  get 'products/new'

  get 'products/index'

  get 'products/edit'

  get 'products/show'



  devise_for :users


end
