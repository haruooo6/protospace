class PopularController < ApplicationController
  def index
    @prototypes = Prototype.order(likes_count: :desc).includes(:user)
  end
end
