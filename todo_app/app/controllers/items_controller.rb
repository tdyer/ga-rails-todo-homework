class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
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

end

private

def set_item
  @item = Item.find(params[:id])
end

def item_params
  params.require(:item).permit(:title,:description,:important,:urgent,:due_date,:category)
end