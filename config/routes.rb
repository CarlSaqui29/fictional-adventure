Rails.application.routes.draw do
  resources :article_configs
  root 'welcome#index'
end
