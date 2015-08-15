class LikesController < ApplicationController

  def index
    @likes = Like.all
  end

  def new
    @like = Like.new
  end

  def create
    @like = Like.new
  end

end
