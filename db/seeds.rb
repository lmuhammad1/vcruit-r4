# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating demo user"
user = User.create!(email: 'demo@example.com', password: 'password')
Profile.create!(user: user, company: 'Vcruit', first_name: 'Demo', last_name: 'User', phone: 5555555555, email: 'demo@example.com')
