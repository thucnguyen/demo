# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c = Company.create!(name: FFaker::Company.name)

3.times do
  User.create!(company: c, first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email)
end