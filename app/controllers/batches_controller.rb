class BatchesController < ApplicationController

  include BatchesHelper

  def batches
    # The content of the title is in the I18n languages files (en.yml,etc)
    @title_i18n_name = 'batches.browser_title'
    @batches = Batch.all
    @students = Student.all
  end

  def batch_students
    @title_i18n_name = 'batch_students.browser_title_students'
    @batch = Batch.where(name: params[:batch]).take
    @students = Student.where(batch_id: @batch.id)
    @per_row = students_per_row(@students.size)
    #Just for now
    @projects = Project.all
    @title = "Batch ##{@batch.name} - #{t(:city)}"
    @subtitle = "#{l(@batch.date_start, format: :month)} - #{l(@batch.date_end, format: :month_year)}"
  end


end
