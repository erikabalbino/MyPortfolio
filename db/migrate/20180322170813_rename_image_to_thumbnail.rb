class RenameImageToThumbnail < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :image, :thumbnail
  end
end
