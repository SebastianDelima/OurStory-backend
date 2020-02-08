# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all



users = [{name: 'matt',   email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Zara',  email:'helo@gamil.com', shortBio:'hello man'},
         {name: 'george', email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Chine', email:'helo@gamil.com', shortBio:'hello man'}, 
         {name: 'matt',   email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Young', email:'helo@gamil.com', shortBio:'hello man'},
         {name: 'Trevor', email:'helo@gamil.com', shortBio:'hello man'}]


         users.map { |user|
           User.create(name: user[:name], email: user[:email], short_bio: user[:shortBio])
        }


