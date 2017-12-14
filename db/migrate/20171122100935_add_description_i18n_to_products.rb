class AddDescriptionI18nToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :description_nl, :string
    add_column :projects, :description_de, :string
  end
end
