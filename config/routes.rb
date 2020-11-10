Rails.application.routes.draw do
  # # Read all
  get "tasks", to: 'tasks#index'
  # Create a new restaurant
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # # Update a restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # # Delete a restaurant
  delete 'tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end
