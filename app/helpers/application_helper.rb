module ApplicationHelper

  def liked(tutorial_id, user_id)
    @like = Like.find_by(tutorial_id: tutorial_id, user_id: user_id)
    @like
  end

end
