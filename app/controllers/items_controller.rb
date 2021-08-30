class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only: [:show, :create, :destroy]
  
  def index
    render component: "items", props:{store: @store, items: @store.items}
  end

  def new
    render component: "Newitem", props{store:@store}
  end

  def create
    @item = @store.items.new(item_params)
    if(@item.save)
      redirect_to store_items_path
    else
    end
  end

  def show
    render component: 'item', props:{store: @store, item:@item}
  end

  def destroy
    @item.destroy
    redirect_to store_items_path
  end

  private

  def item_params
    params.require(:item).permit(:name. :discription)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end

  def set_item
    @item = @department.items.find(params[:id])
  end

  
end
