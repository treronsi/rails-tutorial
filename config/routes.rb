Rails.application.routes.draw do
  get 'pages/info'
  Rails.application.routes.draw do
  	resources :books
  end
  root to: redirect('/tasks')
  resources :ideas
  resources :tasks
  delete 'tasks/:id' => 'tasks#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
