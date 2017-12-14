class AddProjectUrlToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :project_url, :string
  end
end
