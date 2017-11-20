class AddBatchRefToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :batch, foreign_key: true
  end
end
