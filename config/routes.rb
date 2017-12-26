Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: "registrations"}
  resources :exercises


  get 'about', to: 'pages#about'

  get 'ruby', to: 'pages#ruby'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
