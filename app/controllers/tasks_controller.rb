class TasksController < ApplicationController

  before_action :dry_id_task, only: [:show, :edit, :update, :destroy]
    # run privy meth first, which [:actions, :to_run]
  
  # ###ACTIONS###
  def index # all
    @tasks = Task.all
  end

  # def show; end
  def show
  #  @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new # JUST INITIALIZES AN EMPTY INSTANCE FOR CREATE 
  end
  
  def create
    # raise
    @task = Task.new(task_params) # CONVENTION APPEARS TO BE new & save - Don't .create!
    @task.save
    redirect_to task_path(@task)
  end

  # def edit; end
  def edit
    # @task = Task.find(params[:id])
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def dry_id_task
    @task = Task.find(params[:id])
  end
end
