Ims::Application.routes.draw do
  resources :assets
  root :to => "assets#index"
end
