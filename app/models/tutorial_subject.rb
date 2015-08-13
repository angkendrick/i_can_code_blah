class TutorialSubject < ActiveRecord::Base

  belongs_to :tutorial
  belongs_to :subject
  
end
