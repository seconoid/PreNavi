# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# student seed
name = "中山暁登"
email = "akito@example.com"
s_class = "IH13A296"
s_code = 40595
s_no = 27
password = "mogemoge"
image = open("#{Rails.root}/public/icon_default.png")
user_attr = 1
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no
  },
  user_attr: user_attr
)

# client seed
name = "熊谷基継"
email = "kumamoto@example.com"
c_id = "hal_tokyo"
c_name = "HAL東京"
password = "kumakuma"
image = open("#{Rails.root}/public/icon_default.png")
user_attr = 2
User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  client_attributes: {
    c_id: c_id,
    c_name: c_name
  },
  user_attr: user_attr
)

# product seed
Product.create!(
  student_id: 1,
  name: "Prenavi",
  about: "就活プレゼンテーションでの学生と企業のやりとりをよりよくするためのアプリケーションです。",
  url: "http://localhost:3000"
)

# student fakers
30.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  s_class = "XX99X999"
  s_code = 90000 + n
  s_no = 99
  password = "foobar"
  image = open("#{Rails.root}/public/icon_default.png")
  user_attr = 1
  User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  student_attributes: {
    s_class: s_class,
    s_code: s_code,
    s_no: s_no
  },
  user_attr: user_attr
)
end

# client fakers
10.times do |n|
  name = Faker::Name.name
  email = Faker::Internet.email
  c_id = "hal_tokyo"
  c_name = "HAL東京"
  password = "foobar"
  image = open("#{Rails.root}/public/icon_default.png")
  user_attr = 2
  User.create!(
  name: name,
  email: email,
  password: password,
  image: image,
  client_attributes: {
    c_id: c_id,
    c_name: c_name
  },
  user_attr: user_attr
)
end

# # favorite seeds
# Favorite.create!(student_id: 1, client_id: 1)
# Favorite.create!(student_id: 2, client_id: 1)