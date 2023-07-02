Rails.application.routes.draw do
  namespace :admin do
    get 'post_comments/index'
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
    get 'homes/top'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/likes'
    get 'recipes/index'
    get 'recipes/new'
    get 'recipes/show'
    get 'recipes/edit'
    get 'homes/top'
    get 'homes/about'
  end
  # 顧客用
  # URL /customers/sign_in ...
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
