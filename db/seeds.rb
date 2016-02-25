# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Restaurant.create!(name: Faker::Company.name, genre: Faker::Address.country)
end

50.times do
  Review.create!(restaurant_id: rand(10)+1,
      stars: rand(6),
      comments: Faker::Hipster.paragraph
  )
end
