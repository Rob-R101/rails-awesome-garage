# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Owner.destroy_all
Car.destroy_all
Review.destroy_all
Favourite.destroy_all

owner = Owner.create!(nickname: "Rick")
car = owner.cars.create!(
  brand: "Audi",
  model: "A-3 Hatchback",
  year: 2024,
  fuel: "Unleaded petrol"
)

car.photo.attach(
  io: File.open(Rails.root.join('seed_files/audi.jpg')),
  filename: 'audi.jpg',
  content_type: 'image/jpeg'
)

car.reviews.create!(comment: "Love this car!", rating: 5)
car.favourites.create!

owner = Owner.create!(nickname: "Jane")
car = owner.cars.create!(
  brand: "BMW",
  model: "M3",
  year: 2023,
  fuel: "Diesel"
)

file_path = Rails.root.join('seed_files/bmw.jpg')

car.photo.attach(
  io: File.open(file_path),
  filename: 'bmw.jpg',
  content_type: 'image/jpeg'
)



car.reviews.create!(comment: "Yea, it's ok", rating: 3)
car.favourites.create!

owner = Owner.create!(nickname: "Billy")
car = owner.cars.create!(
  brand: "Vauxhall",
  model: "Astra Electric",
  year: 2024,
  fuel: "Electric"
)

car.photo.attach(
  io: File.open(Rails.root.join('seed_files/astra.jpg')),
  filename: 'astra.jpg',
  content_type: 'image/jpeg'
)


car.reviews.create!(comment: "Electric? Yes please!", rating: 5)
car.favourites.create!
