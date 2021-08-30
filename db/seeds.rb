# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Store.destroy_all
Item.destroy_all
#comment.destroy_all
4.times do
    s1 = Store.create(
        name: Faker::company.name,
        manager: Faker::Name.name,
        num_employees: Faker::Number.number(digits:2) )
  5.times do
    i1 = s1.items.create(
        name: Faker::Game.platform
        sale rand(2).even?)
  end
end
# puts "seeded #{Sub.all.size} Subs"
# puts "first sub name: #{Sub.first.name}"
# puts "seeded #{Topic.all.size} Topics"
# puts "first topic name: #{Sub.first.topics.first.name}"