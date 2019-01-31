Rails.application.routes.draw do
  resources :users, only:[:index, :new, :create, :show]
  resources :sessions, only:[:create, :destroy, :new]
  root to: redirect('users')
end
