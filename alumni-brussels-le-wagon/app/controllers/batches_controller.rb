class BatchesController < ApplicationController

  def batches
    @batches = Batch.all
  end

  def batch_students
    @batch = Batch.where(name: params[:batch]).take
    @students = Student.where(batch_id: @batch.id)
  end

end
