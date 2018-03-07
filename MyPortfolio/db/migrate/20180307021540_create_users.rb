class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :profile_title
      t.text :profile_company
      t.text :address
      t.string :email
      t.text :focus
      t.string :url_facebook
      t.string :url_linkedin
      t.string :url_instagram

      t.timestamps
    end
  end
end
