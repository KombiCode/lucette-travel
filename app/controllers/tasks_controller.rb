class TasksController < ApplicationController
  before_action :set_trip, only: [:index, :show, :create]

  def index
    @tasks = @trip.tasks
    @tasks_done = @tasks.where(done: true)
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.trip = @trip
    @task.save!

    redirect_to trip_tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update!(task_params)

    head(200)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy!

    redirect_to trip_tasks_path(@task.trip)
  end


  private

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end
