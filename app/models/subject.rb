class Subject < ActiveRecord::Base

  has_many :tutorial_subjects
  has_many :tutorials, through: :tutorial_subjects

end
