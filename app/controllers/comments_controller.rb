class CommentsController < ApplicationController
    before_action :set_item

    def index
        render component: "Comments", props:{item: @item, comments: @item.comment}
    end
end
