class BatchesController < ApplicationController
  def batches
    @batches = Batch.all
  end

  def batch_students
  end
end
