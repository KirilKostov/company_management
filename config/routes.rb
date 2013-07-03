CompanyManagement::Application.routes.draw do
  resources :projects
  resources :users do
    resources :contacts, :except => [:index]
    resources :articles, :except => [:index]
  end
  resources :sessions, only: [:new, :create, :destroy]
end