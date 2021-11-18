require 'faker'
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clearning db"

Offer.delete_all
User.delete_all

puts 'Creating 28 fake users...'

file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233609/Classmates/20211012_LeWagon_JST5833_q9qbf9.jpg")
user = User.new(first_name: "Egor", last_name: "Dranev", email: "egor@dranev.de", password: "111111", bio: "Already for a while, I am passionate about the startup world. In 2018, I came to Berlin to pursue a Master's in Management at ESMT Berlin and got a chance to deeply local and EU entrepreneurial scene. I worked for a couple of years at the intersection of business and tech in the product, venture development, and growth-related roles in 4 early-stage tech Berlin-based startups., helping ventures find product-market fit and scale. Besides that, I worked on a couple of my own ideas together with friends, which appeared to be a bit frustrating because of the lack of technical knowledge. Bearing that in mind, I decided that it's time to change my life and learn to code myself. After completing the Bootcamp, I want to either be able to land a technical product manager position at the early-stage startup or quicker fully focus on building one of the current ideas. Or, who knows, doing both. Oh, and I really enjoy working with smart people, that is what I appreciate living in Berlin for:)")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233604/Classmates/20211012_LeWagon_JST5783_iusch1.jpg")
user = User.new(first_name: "Matthew", last_name: "Cwaina", email: "Matthew@Cwalina.de", password: "111111", bio: "I come from California. I have been living in Berlin for the last three years and have been working at Starbucks. I want to learn to code because it is something I found that I honestly enjoy doing. My goal after the bootcamp is to find a job in the tech industry in Berlin and to keep learning and growing my skills as a programmer. I am really looking forward to meeting and working with all of you during the bootcamp.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!

file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233586/Classmates/20211012_LeWagon_JST6637_ltqw4j.jpg")
user = User.new(first_name: "Amelie", last_name: "D’arenberg", email: "Amelie@Darenberg.de", password: "111111", bio: "I previously worked in business as part of buying and merchandising teams in various companies. After working on projects with colleagues in IT in my last role at Zalando, I felt that I was more interested in Tech than in Business. I then started learning to code online and decided to join the bootcamp at Le Wagon. After completing the course, I would like to join a company as a Junior Developer.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!

file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233590/Classmates/20211012_LeWagon_JST6472_hgarce.jpg")
user = User.new(first_name: "Or", last_name: "Granot", email: "Or@Granot.de", password: "111111", bio: "I'm Or Granot, 30 years old, originally from Israel.
I am a cook for the past few years, and lately I am thinking of changing profation.
coding was always in my life, I studied in high school and even before by myself.
even though I have some knowledge in coding it is a bit outdated and it was never good enough.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!

file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233595/Classmates/20211012_LeWagon_JST6115_fhshko.jpg")
user = User.new(first_name: "Thomas", last_name: "Kreutz", email: "Thomas@Kreutz.de", password: "111111", bio: "This will actually be my second bootcamp this year, as I have semi successfully (two left hands) converted my car into a microcamper from which I hopefully be able use work using my coding skills and travel. Very much looking forward to meeting everyone on campus and sharing this experience!")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!

file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233595/Classmates/20211012_LeWagon_JST6041_w3anox.jpg")
user = User.new(first_name: "Philipp", last_name: "Krink", email: "Philipp@Krink.de", password: "111111", bio: "usually I am a music producer and audio engineer and have been doing that for the past 10 years. I want to learn to code because I was always interested in how things work and the more technical aspects of the digital world. I hope to bring a bit of stability to my career next to my music and maybe even realize an idea of mine, to create a better music booking and management platform.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233598/Classmates/20211012_LeWagon_JST6144_wntx0u.jpg")
user = User.new(first_name: "Pedro", last_name: "Ramis", email: "Pedro@Ramis.de", password: "111111", bio: "I am a mechanical engineer with a strong desire to learn more every day about technology and I feel that my next step is code for sure!
Learning about start-up models is something that looks very interesting facing this upcoming and technological future that we seem to live in the next years. Due to the fact of globalization and that everything is connected nowadays by the internet, knowing how to design a web seems mandatory for someone who wants to adapt to the future, talking both about technology and business.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233591/Classmates/20211012_LeWagon_JST6247_okkto0.jpg")
user = User.new(first_name: "Maruan", last_name: "Paschen", email: "Maruan@Paschen.de", password: "111111", bio: "I am an author and a chef. I like riddles and financial security, so learning to code seems like a good idea. In the past, I had many jobs, including teacher, hotel night watch guy, pizza deliverer and, well, author and chef.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233596/Classmates/20211012_LeWagon_JST6494_t5bdbe.jpg")
user = User.new(first_name: "Ivan", last_name: "Schlagheck", email: "Ivan@Schlagheck.de", password: "111111", bio: " was born and raised in Buenos Aires, Argentina. Before getting into code, I studied Music Production and Sound Engineering. I’ve worked in theaters, gigs, studios, festivals, etc. Tired of the hard labor that sometimes comes with this profession and the weird schedules, life present me… (drumrolls please) CODING yeaaah.
I started learning on my own but it was not enough, that’s how i found LeWagon.
Im actually looking for a career change and i know that the opportunities are a lot, I don’t really know if i want to start a kickstarter, get a job in a already existing one or just to be a freelancer. I think that, that is also why i came here to LeWagon, to learn on the way, where to go.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637242367/Classmates/20211012_LeWagon_JST6524_xkvf0r.jpg")
user = User.new(first_name: "Marc", last_name: "Rodenbusch", email: "Marc@Rodenbusch.de", password: "111111", bio: "I studied media management and worked in different positions, all belonging to the business section like sales, marketing or general management. In my last job as a general manager for a start-up company I was also responsible for digitalization projects and explored my affinity for the technical side. I want to learn to code to widen my profile as well as switching careers into a more technical position, working for a start-up company, founding my own tech-based company or work as a freelancer.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637233592/Classmates/20211012_LeWagon_JST6576_agyhzd.jpg")
user = User.new(first_name: "Eric", last_name: "Draheim", email: "Eric@Draheim.de", password: "111111", bio: "Usually I am working as a lighting technician, but during the lockdown I am fallen in love with coding. After a few different online courses I thought, it is time to get serious with coding and that I should do a boot camp, because usually I need a bit pressure to do things and I wanted to meet some new people with a similar mindset and will to learn coding.")
user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
user.save!
# file = URI.open("https://res.cloudinary.com/deftool/image/upload/v1637242367/Classmates/20211012_LeWagon_JST6524_xkvf0r.jpg")
# user = User.new(first_name: "Marc", last_name: "Rodenbusch", email: "Marc@Rodenbusch.de", password: "111111")
# user.photo.attach(io: file, filename: "#{user.first_name}_#{user.last_name}.png", content_type: 'image/png')
# user.save!
# 28.times do
#   user = User.new(
#     password: "123456",
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     bio: Faker::Quotes::Shakespeare.hamlet_quote,
#     github: Faker::Internet.url,
#     skillset: "Ruby, HTML, CSS, js"
#   )
#   user.save!
# end

puts "adding 100 offers"

# 100.times do
#   offer = Offer.new(
#     title: Faker::App.name,
#     description: Faker::TvShows::HowIMetYourMother.quote,
#     category: ["js", "CSS", "HTML", "Ruby"].sample,
#     start_time: Faker::Time.backward(days: 5, period: :morning, format: :short),
#     end_time: Faker::Time.forward(days: 5,  period: :evening, format: :long),
#     user: User.all.sample
#     # rand(1..28)
#   )
#   offer.save!
# end
puts 'Finished!'
