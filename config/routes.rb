Rails.application.routes.draw do
  get 'pages/info'
  get "/books" ,to: "books#index"
  post"/books", to: "books#create"
  	get "/books/new" , to: "books#new", as: "new_book"
  	get "/books/:id/edit" , to: "books#edit", as: "edit_book"
  	get "/books/:id" , to: "books#show", as: "book"
  root to: redirect('/tasks')
  resources :ideas
  resources :tasks
  delete 'tasks/:id' => 'tasks#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
