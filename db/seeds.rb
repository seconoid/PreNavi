# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# student seeds
30.times do |n|
  name = Faker::Name.name
  s_class = "XX99X999"
  s_code = 90000 + n
  s_no = 99
  password = "foobar"
  Student.create!(
    name: name,
    s_class: s_class,
    s_code: s_code,
    s_no: s_no,
    password: password)
end

# client seeds
10.times do |n|
  name = Faker::Name.name
  email = "hogehoge@example.com"
  password = "mogemoge"
  Client.create!(
    name: name,
    email: email,
    password: password)
end

# favorite seeds
Favorite.create!(student_id: 1, client_id: 1)
Favorite.create!(student_id: 2, client_id: 1)