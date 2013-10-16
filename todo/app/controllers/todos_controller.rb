class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :delete]

  def show
  end

  def index
    @todos = Todo.all
  end

  def new 
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to @todo
    else 
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to todos_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @todo.destroy
    redirect_to todos_url
  end

  private
  def todo_params
      params.require(:todo).permit(:description, :complete, :date_due)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

end
