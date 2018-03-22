# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Project.destroy_all

u = User.create(
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
# if u.valid?
#   6.times.each do |i|
#     p = Project.create(
#       title: Faker::Dessert.variety,
#       project_type: "example",
#       description: Faker::Dessert.topping,
#       user: u
#     )
#     puts p.errors.full_messages
#     if p.valid?
#       file = File.open(File.join(Rails.root, "app/assets/images/projects/0#{i + 1}-thumbnail.jpg"))
#       p.thumbnail = file
#       p.save
#     end
#   end
# end


users = User.all
projects = Project.all

puts Cowsay.say "Created #{users.count} users", :tux
puts Cowsay.say "Created #{projects.count} projects", :frogs
