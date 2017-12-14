class ChangeNameToBatches < ActiveRecord::Migration[5.0]
  def change
    # To change from string to integer, it's a bit complex
    # so the easy way is to remove and add the column
    # again
    remove_column :batches, :name
    add_column :batches, :name, :integer
  end
end
