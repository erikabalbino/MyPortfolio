class AddColumnProjectClientToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :project_client, :text
  end
end
