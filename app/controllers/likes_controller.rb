class LikesController < ApplicationController
  def create
    Like.create(user_id: current_user.id, prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
    @likes = @prototype.likes
  end

  def destroy
    Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id]).destroy
    @prototype = Prototype.find(params[:prototype_id])
    @likes = @prototype.likes
  end

  private
  def id_params
    params.permit(:prototype_id)
  end
end
