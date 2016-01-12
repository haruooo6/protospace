class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.order('id DESC')
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
    @prototype.pictures.build
  end

  def create
    @prototype = current_user.prototypes.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, pictures_attributes: [:thumbnail, :status] )
  end
end
