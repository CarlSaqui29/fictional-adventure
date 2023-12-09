Rails.application.routes.draw do
  resources :article_configs
  root 'article_configs#index'
end
