e# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
# Customers
Client.create!(
firstname: Faker::Name.first_name,
lastname: Faker::Name.last_name,
address: "#{Faker::Address.street_address},
#{Faker::Address.postcode} #{Faker::Address.city}",
phone_number: "0#{Faker::Number.number(9)}"
)
end