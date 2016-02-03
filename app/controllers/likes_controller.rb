class LikesController < ApplicationController
  def create
    Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(id_params)
    @prototype = Prototype.find(params[:prototype_id])
  end

  def destroy
    @like = current_user.likes.find_by(id_params)
    @like.destroy
    @prototype = Prototype.find(params[:prototype_id])
    @likes = Like.where(id_params)
  end

  private
  def id_params
    params.permit(:prototype_id)
  end
end
