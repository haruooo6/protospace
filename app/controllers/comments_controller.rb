class CommentsController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(prototype_id: params[:prototype_id], user_id: current_user.id)
  end
end
