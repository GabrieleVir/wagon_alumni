class CreateProjectsMetaTags < ActiveRecord::Migration[5.0]
  def change
    create_table :projects_meta_tags, id: false do  |t|
      t.belongs_to :project, index: true
      t.belongs_to :meta_tag, index: true
    end
  end
end
