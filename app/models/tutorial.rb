class Tutorial < ActiveRecord::Base

  has_many :tutorial_subjects
  has_many :subjects, through: :tutorial_subjects

end
