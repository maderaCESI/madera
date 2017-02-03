# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
# Customers
clientName = Faker::Name.clientName,
firstNameClient = Faker::FirstName.firstNameClient,
streetNumber = Faker::StreetNumber.streetNumber,
streetName = Faker::StreetName.streetName,
pc = Faker::Pc.pc,
cityName = Faker::CityName.cityName,
Client.create!(
    clientName: Name,
    firstNameClient: FirstName,
    streetNumber: StreetNumber,
    streetName: StreetName,
    pc: Pc,
    cityName: CityName
)
end