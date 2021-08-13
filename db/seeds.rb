# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tutors = Tutor.create([
  {
    name: "Bob Ross",
    image_url: "https://www.bobross.com/content/bob_ross_img.png",
    bio: "let's paint some trees"
  },
  {
    name: "Deborah Meaden",
    image_url: "https://www.deborahmeaden.com/images/deborah_cutout.png",
    bio: "good stuff will happen if you learn with me"
  },
  {
    name: "David Attenborough",
    image_url: "https://attenboroughfilm.com/wp-content/uploads/2020/09/image-da-clean-poster@2x.jpg",
    bio: "learn to build a better future"
  }
])



# reviews = Review.create([
#   {
#     title: "masterful teacher",
#     description: "I paint trees real good now",
#     score: 5,
#     tutor: tutors.first
#   }
# ])

