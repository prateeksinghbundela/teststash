Rails.application.routes.draw do
  resources :blogs
  resources :snippets
  root 'snippets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
