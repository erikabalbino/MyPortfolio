class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
