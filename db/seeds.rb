# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
# Customers

#Client.create!(
    #clientName: Faker::Name.name,
    #firstNameClient: Faker::Name.first_name,
    #streetNumber: Faker::Address.building_number,
    #streetName: Faker::Address.street_name,
    #pc: Faker::Address.zip,
    #cityName: Faker::Address.city,
    #phonenumber: Faker::PhoneNumber.phone_number,
    #email: Faker::Internet.email
#)

Provider.create!(
    providerName: Faker::Company.name,
    streetNumber: Faker::Address.building_number,
    streetName: Faker::Address.street_name,
    pc: Faker::Address.zip,
    cityName: Faker::Address.city,
    phonenumber: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
)
end


