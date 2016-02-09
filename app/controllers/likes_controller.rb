class LikesController < ApplicationController
  def create
    Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(user_id: current_user.id, prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id]).destroy
    @likes = Like.where(id_params)
    @prototype = Prototype.find(params[:prototype_id])
  end

  private
  def id_params
    params.permit(:prototype_id)
  end
end
