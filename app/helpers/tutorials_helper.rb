module TutorialsHelper

  def search_all(string)
    @subjects = Subject.where('lower(name) LIKE ?', "%#{string.downcase}%")
    @tutorial_subjects = TutorialSubject.where(:subject_id => @subjects)
    @tutorials = Tutorial.where(:id => @tutorial_subjects)
  end

end
