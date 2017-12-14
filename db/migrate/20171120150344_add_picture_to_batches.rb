class AddPictureToBatches < ActiveRecord::Migration[5.0]
  def change
    add_column :batches, :picture, :string
  end
end
