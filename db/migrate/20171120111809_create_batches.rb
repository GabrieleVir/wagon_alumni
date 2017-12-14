class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.string :name
      t.date :date_start
      t.date :date_end
      t.integer :previous_batch

      t.timestamps
    end
  end
end
