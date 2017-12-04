class AjaxController < ApplicationController
  layout false

  def modal_students
    # Getting the locale from ajax
    I18n.locale = params[:_locale]
    @project = Project.find(params[:project])
  end

  def batch_search
    @results = PgSearch.multisearch(params[:_searchLetter])
  end

end
