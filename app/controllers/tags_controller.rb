class TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.all
  end

  def show
    @prototypes = Prototype.tagged_with(params[:id])
  end
end
