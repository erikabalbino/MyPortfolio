class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.references :project, foreign_key: true, index: true

      t.timestamps
    end
  end
end
