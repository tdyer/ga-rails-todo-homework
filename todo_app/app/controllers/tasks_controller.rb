class TasksController < ApplicationController
	before_action :set_task, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@tasks = Task.all
	end

	def new
	end

	def create
	    @task = Task.new(task_params)
	    if @task.save
	    	redirect_to tasks_path
	    else
	        render action: 'new' 
	    end
	end

	def edit

	end

	def update
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render actions: 'edit'
		end
	end

	def destroy
		Task.find(params[:id]).delete
		redirect_to tasks_path
	end

	private

	def set_task
		@task = Task.find(params[:id])
	end

	def task_params
		params.require(:task).permit(:name, :complete, :due_date)
	end

end
