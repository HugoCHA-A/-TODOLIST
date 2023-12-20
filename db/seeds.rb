# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all users..."

User.destroy_all

puts "All users have been destroyed"
puts "Creating new users..."

User.create!( nickname: "Drakie", email: "drakie@gmail.com" )
User.create!( nickname: "Popopom", email: "popopom@gmail.com" )
User.create!( nickname: "Goldie", email: "goldie@gmail.com" )
User.create!( nickname: "TheFirst", email: "thefirst@gmail.com" )
User.create!( nickname: "Crapouax", email: "hugo.antonietti@hotmail.fr" )

puts "New users created"
