module LikesHelper

  def tutorial(tutorial_id)
    Tutorial.find(tutorial_id)
  end

end
