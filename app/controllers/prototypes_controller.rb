class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.create(create_params)
    redirect_to action: 'index'
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catchcopy, :concept).merge(user_id: current_user.id)
  end
end
