# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

# User.destroy_all
# Event.destroy_all

15.times do 
    User.create!(first_name: Faker::Name.first_name, email: Faker::Internet.email, password: Faker::String.random(length: 6))
  end

  15.times do |index|
    Event.create!(start_date: (Time.now + index), duration: index + 30, title: Faker::Book.title, description: Faker::Movies::StarWars.quote, price: index + 12, location: Faker::Address.city)
  end