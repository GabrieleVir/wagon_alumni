class AjaxController < ApplicationController
  layout false

  def modal_students
    @project = Project.find(params[:project])
  end

end
