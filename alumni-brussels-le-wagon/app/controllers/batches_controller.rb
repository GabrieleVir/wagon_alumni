class BatchesController < ApplicationController

  def batches
    @batches = Batch.all
  end

  def batch_students
    @students = Student.where(batch_id: params[:id])
  end

end
