# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Artist

#     Artist.create(name: Faker::Music.band, location: Faker::Address.city, img_url: Faker::Avatar.image, bio: Faker::Movie.quote, genre: Faker::Music.genre, awards: Faker::SlackEmoji.celebration)
# end
Artist.destroy_all

50.times do 
Artist.create(name: Faker::Music.band, location: Faker::Address.city, img_url: Faker::Avatar.image, bio: Faker::Movie.quote, genre: Faker::Music.genre, awards: Faker::SlackEmoji.celebration, username: rand(1..35).to_s, password: "12345678")
end

#songs
# 35.times do 
#     Song.create(name: Faker::Music::GratefulDead.song, artist_id: Artist.all.sample.id)
# end

