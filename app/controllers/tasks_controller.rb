class TasksController < ApplicationController
  # before action
  def index # all
    @tasks = Task.all
  end
end
