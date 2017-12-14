class AddFakeToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :fake, :boolean, :default => false
  end
end
