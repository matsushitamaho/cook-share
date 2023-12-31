Rails.application.routes.draw do
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  namespace :admin do
    root to: "homes#top"
    resources :customers,     only: [:index, :show, :edit, :update]
    resources :post_comments, only: [:index, :destroy]
  end


  scope module: 'public' do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :recipes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :post_comments, only: [:new, :create, :destroy]
      collection do
        get 'search', as: 'recipe_search'
      end
    end
    resource :customer, only: [:show, :edit, :update] do
      member do
        get 'favorites'
      end
      get 'information/edit' => "customers#edit", on: :collection
      get 'leave',        on: :collection
      patch 'withdwaral', on: :collection
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
