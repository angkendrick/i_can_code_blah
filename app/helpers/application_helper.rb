module ApplicationHelper

  def liked(tutorial_id, user_id)
    Like.find_by(tutorial_id: tutorial_id, user_id: user_id)
  end

end
