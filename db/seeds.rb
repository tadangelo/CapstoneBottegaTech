User.create!(
  email: "ruby.code.tutorials@gmail.com",
  name: "Ruby Tutorials Admin",
  password: "capstone",
  password_confirmation: "capstone",
  roles: "admin"
)

puts "1 Admin user created"

User.create!(
  email: "tania.a.dangelo@outlook.com",
  name: "Tania D'Angelo",
  password: "testtest",
  password_confirmation: "testtest",
)

puts "1 regular user created"