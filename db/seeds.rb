# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning the db'
Movie.destroy_all
List.destroy_all

puts 'Seeding db 🌱'

5.times do
  list = List.create(
    name: Faker::Music.genre
  )
  puts "List with id: #{list.id} has been created"
end

10.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::TvShows::BigBangTheory.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(1.0..10.0).round(1)
  )
  puts "Movie with id: #{movie.id} has been created."
end

puts 'Finished ✅'
