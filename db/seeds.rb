# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning db"

Album.destroy_all
Channel.destroy_all
User.destroy_all

puts "Creating users"

User.create!(id: 1001, email: "alex@gmail.com", password: "123456")
User.create!(id: 1002, email: "ejdat@gmail.com", password: "123456")
User.create!(id: 1003, email: "john@gmail.com", password: "123456")
User.create!(id: 1004, email: "fred@gmail.com", password: "123456")
User.create!(id: 1005, email: "steph@gmail.com", password: "123456")
User.create!(id: 1006, email: "jack@gmail.com", password: "123456")
User.create!(id: 1007, email: "komi@gmail.com", password: "123456")
User.create!(id: 1008, email: "brudi@gmail.com", password: "123456")
User.create!(id: 1009, email: "luche@gmail.com", password: "123456")
User.create!(id: 1010, email: "nath@gmail.com", password: "123456")


puts "Creating channels"

Channel.create!(id: 1001, name: "MusicLand", rating: 4.5, picture: "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", user_id: 1001)
Channel.create!(id: 1002, name: "Tapas", rating: 3.5, picture: "https://images.unsplash.com/photo-1487180144351-b8472da7d491?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2252&q=80", user_id: 1002)
Channel.create!(id: 1003, name: "Chup", rating: 3.3, picture: "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", user_id: 1003)
Channel.create!(id: 1004, name: "Lavie", rating: 3.8, picture: "https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", user_id: 1004)
Channel.create!(id: 1005, name: "Reverse", rating: 3, picture: "https://images.unsplash.com/photo-1502773860571-211a597d6e4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", user_id: 1005)
Channel.create!(id: 1006, name: "Octo", rating: 2.3, picture: "https://images.unsplash.com/photo-1516450360452-9312f5e86fc7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80", user_id: 1006)
Channel.create!(id: 1007, name: "Freddie", rating: 4.3, picture: "https://images.unsplash.com/photo-1499415479124-43c32433a620?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3289&q=80", user_id: 1007)
Channel.create!(id: 1008, name: "Tap", rating: 5, picture: "https://res.cloudinary.com/dvbstrulo/image/upload/v1569344312/photo-1499415479124-43c32433a620_bzjdb5.jpg", user_id: 1008)
Channel.create!(id: 1009, name: "Rabat", rating: 4, picture: "https://images.unsplash.com/photo-1484755560615-a4c64e778a6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2180&q=80", user_id: 1009)
Channel.create!(id: 1010, name: "Zucchi", rating: 2.9, picture: "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80", user_id: 1010)


puts "Creating albums"

albums_list = [
  ["Wow",
    40,
    "pop",
    4,
    "https://cdn.athemes.com/wp-content/uploads/Slide-Music-WordPress-Theme.jpg",
    3000,
    1001
  ],
  ["Check",
    40,
    "rock",
    5,
    "https://soundofbrit.fr/wp-content/uploads/2019/07/JNR-Album-Web.jpg",
    1000,
    1001
  ],
  ["Chock",
    40,
    "pop",
    3,
    "https://www.watertower-music.com/images/features/GOT_S8_SDTK_Banner_FeatureImageSource.png",
    500,
    1002
  ]
]

albums_list.each do |title, price, genre, rating, picture, view, channel_id|
  Album.create!(title: title, price: price, genre: genre, rating: rating, picture: picture, view: view, channel_id: channel_id)
end

puts "Done"
