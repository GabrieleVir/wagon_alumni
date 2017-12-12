class AjaxController < ApplicationController
  layout false

  def modal_students
    # Getting the locale from ajax
    @language = params[:_locale]
    @project = Project.find(params[:project])
  end

  def batch_search
    @language = params[:_locale]
    if @language == ''
      @language = 'en'
    end
    @results = PgSearch.multisearch(params[:_searchLetter])
  end

end
