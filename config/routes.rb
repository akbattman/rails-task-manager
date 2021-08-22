Rails.application.routes.draw do
  # DSL see https://guides.rubyonrails.org/routing.html
  # ###################################################

  # home
  root to: 'tasks#index'

  # resources :tasks, except: [] / only:[]
  # show all
  get "tasks", to: "tasks#index"

  # create
  get "tasks/new", to: "tasks#new", as: :new_task # NB. MUST COME BEFORE SHOW ONE (ID)
  post "tasks", to: "tasks#create"

  # show one
  get "tasks/:id", to: "tasks#show", as: :task
  
  # update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  
  # destroy
  delete "tasks/:id", to: "tasks#destroy"

end
