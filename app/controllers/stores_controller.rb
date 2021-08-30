class StoresController < ApplicationController
  efore_action :set_store
  before_action :set_item, only: [:show]

  def index
    @stores = Store.all
    render component: "Stores", props: { stores: @stores }
  end

  def show
    render component: "Store"
  end

  def new
    render component: "NewStore"
  end

  def create
    @store = Store.new(store_params)
    if store.save
      redirect_to root_path
    else
    end
  end

  def edit
    render component: "StoreEdit", props{store: @store}
  end

  def update
    if store.update(store_params)
      redirect_to stores_path
    end
  end

  def destroy
    @store.destroy
    redirect_to root_path
  end

  private

  def store_params
    params.require{:store}.permit(:name)
  end

  def set_store
    @store = Store.find(params[:store_id])
  end
end