class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @tasks_done = Task.where(done: true)
  end

  def new
    @task = Task.new
  end

  def show
    @trip = Trip.find(params[:id])
    @task = Task.new
    @task.trip = @trip
  end


  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_params(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to task_path
  end


  private

  def task_params
    params.require(:task).permit(:name)
  end
end
