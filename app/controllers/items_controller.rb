class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show]
  
  def index
    render component: "items", props{department_store}
  end

  def show
    render component: 'item', props(item:@item)
  end

  def new
  end
end
