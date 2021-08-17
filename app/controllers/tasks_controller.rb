class TasksController < ApplicationController
  # before action
  def index # all
    @tasks = Task.all
  end
  
  def show
    #raise
    @task = Task.find(params[:id])
  end

  # def new
  # end

  # def create
  # end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end
