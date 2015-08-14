class SearchController < ApplicationController

  #routes

  def index
    @tutorials = search_all(params['search_string']) if params['search_string']
    #@tutorials = Tutorial.new
  end

  def search
    #@tutorials = search_all(params['search_string'])
    #render 'index'
  end

  #functions

  def search_all(string)

    #searches Subject (name & description)
    @subjects = Subject.where('lower(name) LIKE ? or lower(description) LIKE ?', "%#{string.downcase}%", "%#{string.downcase}%")
    @tutorial_subjects = TutorialSubject.where(:subject_id => @subjects)
    @tutorials = Tutorial.where(:id => @tutorial_subjects)
  end

end
