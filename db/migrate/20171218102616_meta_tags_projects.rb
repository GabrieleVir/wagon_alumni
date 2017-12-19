class MetaTagsProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :meta_tags_projects, id: false do  |t|
      t.belongs_to :project, index: true
      t.belongs_to :meta_tag, index: true
    end
  end
end
