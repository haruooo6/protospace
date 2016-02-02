class LikesController < ApplicationController
  def create
    @like = Like.create(prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    @prototype = Prototype.find(params[:prototype_id])
  end

  def destroy
  end
end
