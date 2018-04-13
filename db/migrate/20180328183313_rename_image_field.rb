class RenameImageField < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :image, :avatar
  end
end
