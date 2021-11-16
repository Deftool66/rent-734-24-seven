# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
puts "clearning db"
User.delete_all
puts 'Creating 28 fake users...'
28.times do
  user = User.new(
    password: "123456",
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bio: Faker::Quotes::Shakespeare.hamlet_quote,
    github: Faker::Internet.url,
    skillset: "Ruby, HTML, CSS, js"
  )
  user.save!
end
puts 'Finished!'
