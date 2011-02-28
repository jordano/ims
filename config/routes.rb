Ims::Application.routes.draw do

  root :to => "dashboard#index"

  resources :dashboard, :only => :index

  resources :inventory, :only => :index
  namespace :inventory do

    resources :assets

    resources :settings, :only => :index
    namespace :settings do

      resources :categories
      resources :subcategories
      resources :manufacturers
      resources :model_types

    end

  end

  resources :tasks, :only => :index
  namespace :tasks do

    resources :tickets

    resources :settings, :only => :index
    namespace :settings do

      resources :task_categories
      resources :task_subcategories

    end

  end

  resources :copyrights, :only => :index

end
