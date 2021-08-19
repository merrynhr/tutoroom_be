# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
    email: "Bob@email.com",
    password: "password1",
    password_confirmation: "password1",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    fullname: "Bob Ross",
    subject: "Painting",
    teacher: true
  },
  {
    fullname: "Deborah Meaden",
    subject: "Business",
    teacher: true,
    password: "password2",
    password_confirmation: "password2",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Debs@email.com"
  },
  {
    fullname: "David Attenborough",
    subject: "conservation",
    teacher: true,
    password: "password3",
    password_confirmation: "password3",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Dave@email.com"
  },
  {
    fullname: "tutor4",
    subject: "Maths",
    teacher: true,
    password: "password4",
    password_confirmation: "password4",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "4@email.com"
  },
  {
    fullname: "learner1",
    subject: "English",
    teacher: false,
    password: "password5",
    password_confirmation: "password5",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "5@email.com"
  },
  {
    fullname: "learner2",
    subject: "History",
    teacher: false,
    password: "password6",
    password_confirmation: "password6",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "6@email.com"
  },
  {
    email: "Mike@email.com",
    password: "password7",
    password_confirmation: "password7",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    fullname: "Mike",
    subject: "VScode shotcuts",
    teacher: true
  },
  {
    fullname: "Arif",
    subject: "React JS",
    teacher: true,
    password: "password8",
    password_confirmation: "password8",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Arif@email.com"
  },
  {
    fullname: "Zsuzsanna",
    subject: "Cooking",
    teacher: true,
    password: "password9",
    password_confirmation: "password9",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Zsuzsanna@email.com"
  },
  {
    fullname: "Misha",
    subject: "English",
    teacher: true,
    password: "password10",
    password_confirmation: "password10",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Misha@email.com"
  },
  {
    fullname: "Jenny",
    subject: "Photography",
    teacher: true,
    password: "password11",
    password_confirmation: "password11",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Jenny@email.com"
  },
  {
    fullname: "Merryn",
    subject: "Education",
    teacher: true,
    password: "password12",
    password_confirmation: "password12",
    reset_password_token: nil,
    reset_password_sent_at: nil, 
    remember_created_at: nil,
    email: "Merryn@email.com"
  },
])

# tutors = Tutor.create([
#   {
#     name: "Bob Ross",
#     subject: "Painting",
#     image_url: "https://www.bobross.com/content/bob_ross_img.png",
#     bio: "let's paint some trees",
#     email: "Bob@email.com",
#     user_id: 1
#   },
#   {
#     name: "Deborah Meaden",
#     subject: "Business",
#     image_url: "https://www.deborahmeaden.com/images/deborah_cutout.png",
#     bio: "good stuff will happen if you learn with me",
#     email: "Debs@email.com",
#     user_id: 2
#   },
#   {
#     name: "David Attenborough",
#     subject: "conservation",
#     image_url: "https://attenboroughfilm.com/wp-content/uploads/2020/09/image-da-clean-poster@2x.jpg",
#     bio: "learn to build a better future",
#     email: "Dave@email.com",
#     user_id: 3
#   },

#   {
#     name: "tutor 4",
#     subject: "Maths",
#     image_url: "https://attenboroughfilm.com/wp-content/uploads/2020/09/image-da-clean-poster@2x.jpg",
#     bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
#     email: "4@email.com",
#     user_id: 4
#   },
#   {
#     name: "learner 1",
#     subject: "English",
#     image_url: "https://attenboroughfilm.com/wp-content/uploads/2020/09/image-da-clean-poster@2x.jpg",
#     bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
#     email: "5@email.com",
#     user_id: 5
#   },
#   {
#     name: "learner 2",
#     subject: "History",
#     image_url: "https://attenboroughfilm.com/wp-content/uploads/2020/09/image-da-clean-poster@2x.jpg",
#     bio: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
#     email: "6@email.com",
#     user_id: 6
#   }
# ])


  
  
  

