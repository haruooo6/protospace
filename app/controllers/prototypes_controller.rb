class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.order('rand()').includes(:user)
  end

  def show
    @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments = @prototype.comments
    @likes = @prototype.likes
  end

  def new
    @prototype = Prototype.new
    @prototype.pictures.build
  end

  def create
    @prototype = current_user.prototypes.create(prototype_params)
    if @prototype.save
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy if prototype.user_id == current_user.id
    redirect_to action: :index
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params) if prototype.user_id == current_user.id
    redirect_to action: :index
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catchcopy, :concept, pictures_attributes: [:id, :thumbnail, :status] )
  end
end
