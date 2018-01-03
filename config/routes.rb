Rails.application.routes.draw do
  resources :lessons
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: "registrations"}
  resources :exercises


  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  get 'resources', to: 'pages#resources'

  get 'certificate', to: 'pages#certificate'

  get 'credits', to: 'pages#credits'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
