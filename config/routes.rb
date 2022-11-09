Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  get '/tasks', to: 'tasks#index'

  # Create new
  get '/tasks/new', to: 'tasks#new' # notice how the order of this should be before id
  post '/tasks', to: 'tasks#create' # every time an action is made here, define it in the controller

  # Read one
  get '/tasks/:id', to: 'tasks#show', as: :task # this helps with the redirect

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'

  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
