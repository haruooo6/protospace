class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.pictures.build
  end

  def create
    @prototype = current_user.prototypes.create(create_params)
    redirect_to action: :index
    @prototype.pictures.build
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, pictures_attributes: [:thumbnail, :status] )
  end
end
