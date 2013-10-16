class ToDosController < ApplicationController
        before_action :set_todo, only: [:show, :edit, :update, :destroy]

        def show
        end

        def index
                @to_dos = ToDo.all
        end

        def new
                @to_do = ToDo.new
        end

        def create
                @to_do = ToDo.new(to_do_params)
                if @to_do.save
                        redirect_to @to_do
                else
                        render action: 'new'
                end
        end

        def edit
        end

        def update
                if @to_do.update(to_do_params)
                        redirect_to @to_do
                else
                        render action: 'edit'
                end
        end

        def destroy
                @to_do.destroy
                redirect_to to_dos_url
        end

        private

        def set_todo
                @to_do = ToDo.find(params[:id])
        end

        def to_do_params
                params.require(:to_do).permit(:task_name, :description, :complete, :due_date) 
        end

end