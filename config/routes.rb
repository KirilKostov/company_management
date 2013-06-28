CompanyManagement::Application.routes.draw do
  resources :projects
  resources :users do
    resources :contacts
  end
  resources :sessions, only: [:new, :create, :destroy]
end