# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Faker::Name.name             #=> "Tyshawn Johns Sr."
Faker::PhoneNumber.phone_number #=> "(504) 113-1705"
Faker::Address.full_address #=> "282 Kevin Brook, Imogeneborough, CA 58517"
Faker::Gender.binary_type #=> "Female"
Faker::Quotes::Shakespeare.romeo_and_juliet_quote # => "O Romeo, Romeo! wherefore art thou Romeo?."

# Create 10 fake visitors
1000.times do
  Visitor.create!(
    full_name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    residential_address: Faker::Address.full_address,
    gender: Faker::Gender.binary_type,
    comment: Faker::Quotes::Shakespeare.hamlet_quote
  )
end
