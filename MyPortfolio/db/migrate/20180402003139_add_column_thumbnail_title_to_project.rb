class AddColumnThumbnailTitleToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :thumbnail_title, :string
  end
end
