class AddDescriptionFrToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :description_fr, :string
  end
end
