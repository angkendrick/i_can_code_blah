class LikesController < ApplicationController

  def index
    @likes = Like.where(user_id: current_user.id)
  end

  def create
    @like = Like.new(secure_params)

    if @like.save
      redirect_to tutorials_path
    else
      render tutorials_path
    end
  end

  def destroy
    @like = Like.find(params[:id])

    if @like.destroy
      redirect_to tutorials_path
    else
      render tutorials_path
    end
  end

  def secure_params
    params.require(:like).permit(:tutorial_id, :user_id)
  end

end
