# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


comedy = Genre.create(name: "comedy")
history = Genre.create(name: "history")
novel = Genre.create(name: "Novel")

Book.create(title: "HP adn ST", author: "JK ROWLING", book_img: "https://images-na.ssl-images-amazon.com/images/I/51SBx6jWilL._SY291_BO1,204,203,200_QL40_FMwebp_.jpg", genre_id: novel.id)


