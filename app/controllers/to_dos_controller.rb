class ToDosController < ApplicationController


  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end
 
  def show
    @todo = Todo.find(params[:id])
  end


  def create
    @todo = Todo.new(todo_params)
    @todo.save

    redirect_to todo_params(@todo)
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)

    redirect_to todo_path(@todo)
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todo_path
  end


  private

  def todo_params
    params.require(:todo).permit(:name )
  end
end
