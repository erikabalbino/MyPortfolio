# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create(
  first_name: "Liz",
  last_name: "Balbino",
  profile_title: "Graphic Design Student",
  profile_company: "The Art Institute of Vancouver",
  address: "Burnaby, British Columbia, Canada",
  email: "mecbalbino@gmail.com",
  focus: "Graphic Designer,Illustration,Digital Art",
  url_facebook: "http://facebook.com/mebalbino",
  url_linkedin: "http://linkedin.com/in/mebalbino",
  url_instagram: "http://instagram.com/mebalbino",
  image: "https://mir-s3-cdn-cf.behance.net/user/138/a6840c65646341.59346d236302e.jpg"
)



# 5.times.each do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name
#
#   u = User.create(
#     first_name: first_name,
#     last_name: last_name,
#     profile_title: Faker::Company.profession,
#     profile_company: Faker::Company.name,
#     address: Faker::Lorem.paragraph,
#     email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
#     focus: Faker::Company.buzzword,
#     url_facebook: Faker::Internet.url,
#     url_linkedin: Faker::Internet.url,
#     url_instagram: Faker::Internet.url
#   )
# end

users = User.all

puts Cowsay.say "Created #{users.count} users", :tux
