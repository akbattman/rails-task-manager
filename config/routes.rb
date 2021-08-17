Rails.application.routes.draw do
  # DSL see https://guides.rubyonrails.org/routing.html
  # ###################################################
  # all
  get "tasks", to: "tasks#index"
  # create

  #one
  get "tasks/:id", to: "tasks#show", as: :task
  #update

  #destroy


end
