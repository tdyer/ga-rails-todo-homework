class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render action 'new'
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to @todo
    else
      render action 'edit'
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    completed = Todo.find(params[:id])
    completed.flag = true
    completed.save
    redirect_to todos_path
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :flag, :deadline)
  end
end
