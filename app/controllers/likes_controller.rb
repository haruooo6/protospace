class LikesController < ApplicationController
  def create
    @like = Like.create(prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    redirect_to :back
  end

  def destroy
  end
end
