# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

create_username = lambda { |n| n = n.to_s; n.size < 2 ? name = "user0" + n : name = "user" + n; name }

User.create!(name:  "Example User",
             username: "Example1",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             phone: "2015551212",
             zipcode: "07666",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  username = create_username.call(n+1)
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  phone = rand(10000000000).to_s
  zip = rand(100000).to_s
  User.create!(name:  name,
               username: username,
               email: email,
               password:              password,
               password_confirmation: password,
               phone: phone,
               zipcode: zip,
               activated: true,
               activated_at: Time.zone.now)
end

# Microposts
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }