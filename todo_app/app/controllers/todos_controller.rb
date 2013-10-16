class ToDosController < ApplicationController
        before_action :set_todo, only: [:show, :edit, :update, :destroy]

        def show
        end

        def index
                @todos = ToDo.all
        end

        def new
                @todo = ToDo.new
        end

        def create
                @todo = ToDo.new(todo_params)
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
                        redirect_to @todo
                else
                        render action: 'edit'
                end
        end

        def destroy
                @todo.destroy
                redirect_to todos_url
        end

        private

        def set_todo
                @todo = ToDo.find(params[:id])
        end

        def todo_params
                params.require(:todo).permit(:task_name, :description, :complete, :due_date) 
        end

end