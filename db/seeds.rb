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

owner = Owner.create(nickname: "Rick")
car = owner.cars.create(brand: "Audi", model: "A-3 Hatchback", year: 2024, fuel: "Unleaded petrol" )
review = car.reviews.create(comment: "Love this car!", rating: 5)
favourite = car.favourites.create

owner = Owner.create(nickname: "Helen")
car = owner.cars.create(brand: "BMW", model: "BMW M2", year: 2023, fuel: "Unleaded petrol" )
review = car.reviews.create(comment: "Awesome to drive!", rating: 4)
favourite = car.favourites.create

owner = Owner.create(nickname: "Jim")
car = owner.cars.create(brand: "Vauxhall", model: "Astra Electric Estate", year: 2024, fuel: "Electric" )
review = car.reviews.create(comment: "So cheap to run!", rating: 3)
favourite = car.favourites.create
