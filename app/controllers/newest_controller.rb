class NewestController < ApplicationController
  def index
    @prototypes = Prototype.order(id: :desc).includes(:user)
  end
end
