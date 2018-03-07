class User < ApplicationRecord

  validates :first_name, :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email,
    presence: true,
    uniqueness: true,
    format: VALID_EMAIL_REGEX

    # t.text :profile_title
    # t.text :profile_company
    # t.text :address
    # t.text :focus
    # t.string :url_facebook
    # t.string :url_linkedin
    # t.string :url_instagram

end
