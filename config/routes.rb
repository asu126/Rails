Rails.application.routes.draw do
  # get 'welcome/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # The priority is based upon order of creation:
  # first created -> highest priority.
  #
  # You can have the root of your site routed with "root"
  resources :articles do
    resources :comments
  end
  
  # resources :articles
  root 'welcome#index'
end
