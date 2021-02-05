# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying tables"
User.destroy_all
Product.destroy_all

puts "Tables Destroyed"
puts "Creating Seeds"

User.create!(email: "flavio@gmail.com", password: "123456")
User.create!(email: "caique@gmail.com", password: "123456")

Product.create!(short_description: "Caixa de Som Preta", description: "Essa seria uma caixa de som preta muito bonita")
Product.create!(short_description: "Caixa de Som Branca", description: "Essa seria uma caixa de som branca muito bonita")
Product.create!(short_description: "Caixa de Som Amarela", description: "Essa seria uma caixa de som amarela muito bonita")

puts "Seeds Created"