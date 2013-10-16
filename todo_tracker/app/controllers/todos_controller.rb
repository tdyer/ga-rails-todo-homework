class TodosController < ApplicationController
	before_action :set_todo, only: [:show, :edit, :update, :destroy]
	def show
	end
	def index
		@todos = Todo.all
	end
	def create
		@todo = Todo.new(todo_params)

		if @todo.save
			redirect_to @todo
		else
			render action: 'new'
		end
	end
	def new
		@todo = Todo.new
	end
	def update
		if @todo.update(todo_params)
			redirect_to @todo
		else
			redner action: 'edit'
		end
	end
	def edit
	end
	def destroy
		@todo.destroy
		redirect_to todos_url
	end

	private

	def set_todo
		@todo = Todo.find(params[:id])
	end
	def todo_params
		params.require(:todo).permit(:task, :complete, :due_date, :description)
	end
end