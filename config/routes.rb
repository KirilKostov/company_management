CompanyManagement::Application.routes.draw do
  resources :projects
  resources :users do
    resources :contacts, :except => [:index]
    resources :articles, :controller => 'users/articles'
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles do
    resources :comments, :controller => 'articles/comments', only: [:create, :destroy]
  end
end