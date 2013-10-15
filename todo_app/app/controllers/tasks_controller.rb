class TasksController < Application TasksController
	before_action :set_task, only: [:show, :edit, :update, :destroy]

	def show
	end

	def index
		@tasks = Task.all
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def set_task
		@task = Task.find(params[:id])
	end

	def task_params
		params.require(:task).permit(:name, :complete, :due_date)
	end

end
