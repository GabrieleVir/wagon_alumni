class AddNextBatchToBatches < ActiveRecord::Migration[5.0]
  def change
    add_column :batches, :next_batch, :integer
  end
end
