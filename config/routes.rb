Rails.application.routes.draw do
  get 'pages/info'
  root to: redirect('/tasks')
  resources :ideas
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
