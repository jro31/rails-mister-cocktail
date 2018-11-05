# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Emptying the database..."
Ingredient.destroy_all
puts "Generating new ingredients..."

20.times do |i|
  Ingredient.create(name: Faker::Food.dish)
  Ingredient.create(name: Faker::Food.ingredient)
  Ingredient.create(name: Faker::Food.fruits)
  Ingredient.create(name: Faker::Food.vegetables)
  Ingredient.create(name: Faker::Food.spice)
end

puts "Finished generating ingredients..."

# puts "Emptying the DB"
# Restaurant.destroy_all
# puts "Creating restaurants"

# 20.times do |i|
#   restaurant = Restaurant.new(name: Faker::GreekPhilosophers.name, address: Faker::GameOfThrones.city, phone_number: Faker::PhoneNumber.cell_phone, category: ["chinese", "italian", "japanese", "french", "belgian"].sample, )
#   restaurant.save!
#   puts "Added new restaurant"
# end
# puts "Finished seeding!"
