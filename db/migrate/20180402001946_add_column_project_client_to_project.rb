class AddColumnProjectClientToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :project_client, :text
    add_column :projects, :project_type, :text
  end
end
