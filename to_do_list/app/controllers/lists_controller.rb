class ListsController < ApplicationController
	before_action :set_list, only: [:show , :edit , :update, :destroy]

	def show 
	end 

	def index 
		@lists = List.all 
	end 

	def new 
		@list = List.new 
	end 

	def create
		@list = List.new(list_params)
		if @list.save 
			redirect_to @list 
		else 
			render action: 'new'
		end 
	end

	def edit
	end 

	def update 
		if @list.update(list_params)
			redirect_to @list
		else 
			render action: 'edit'
		end 
	end 

	def destroy
		@list = List.destroy
		redirect_to lists_url 
	end 

	private 

	def set_list
		@list = List.find(params[:id])
	end 

	def list_params
		params.require(:list).permit(:task, 
			:due_date, :created_at, :owner, :complete, :notes, :catagory, :days_to_complete)
	end 

end

