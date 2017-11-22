class RemoveNameToBatches < ActiveRecord::Migration[5.0]
  def change
    remove_column :batches, :name
  end
end
