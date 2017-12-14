class AddProjectRefToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :project, foreign_key: true
  end
end
