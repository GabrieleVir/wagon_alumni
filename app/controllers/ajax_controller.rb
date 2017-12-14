class AjaxController < ApplicationController
  layout false

  def modal_students
    # Getting the locale from ajax
    @language = params[:_locale]
    if @language == ''
      @language = 'en'
    end
    # And setting the locale that triggers the translation to the @language variable
    I18n.locale = @language
    @project = Project.find(params[:project])
  end

  def batch_search
    @language = params[:_locale]
    if @language == ''
      @language = 'en'
    end
    I18n.locale = @language
    @results = PgSearch.multisearch(params[:_searchLetter])
  end

end
