class BatchesController < ApplicationController

  def batches
  end

  def batch_students
    @students = students.where(batch_id: params[:id])
  end

end
