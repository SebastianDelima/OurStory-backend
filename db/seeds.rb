# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Story.destroy_all

users = [{name: 'matt',   email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Zara',  email:'helo@gamil.com', shortBio:'hello man'},
         {name: 'george', email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Chine', email:'helo@gamil.com', shortBio:'hello man'}, 
         {name: 'matt',   email:'helo@gamil.com', shortBio:'hello man'}, {name: 'Young', email:'helo@gamil.com', shortBio:'hello man'},
         {name: 'Trevor', email:'helo@gamil.com', shortBio:'hello man'}]


         users.map { |user|
           User.create(name: user[:name], email: user[:email], short_bio: user[:shortBio])
        }


stories = [{title:"A funny story",         image:'https://bit.ly/31fJUrv', description:"Read this and you will die in the next year", completed:true}, {title:"Junior Boy",       image:'https://bit.ly/2RAgNf0', description:"Read this and you will die in the next year", completed:true}, {title:"White house",  image:'https://bit.ly/2S3krwS', description:"Read this and you will die in the next year", completed:false},
           {title:"The Hence in the park", image:'https://bit.ly/2O8HRA4', description:"Read this and you will die in the next year", completed:true}, {title:"My friend arnold", image:'https://bit.ly/2S3krwS', description:"Read this and you will die in the next year", completed:true}, {title:"Black House",  image:'https://bit.ly/31fJUrv', description:"Read this and you will die in the next year", completed:false},
           {title:"Black Mamba",           image:'https://bit.ly/2uG2A7o', description:"Read this and you will die in the next year", completed:true}, {title:"Chek in",          image:'https://bit.ly/2S3krwS', description:"Read this and you will die in the next year", completed:true}, {title:"Yellow House", image:'https://bit.ly/2S3krwS', description:"Read this and you will die in the next year", completed:false},
           {title:"Little Boys",           image:'https://bit.ly/2OpziRF', description:"Read this and you will die in the next year", completed:true}, {title:"give me money",    image:'https://bit.ly/31fJUrv', description:"Read this and you will die in the next year", completed:true}, {title:"Image House",  image:'https://bit.ly/2S3krwS', description:"Read this and you will die in the next year", completed:false}]

         stories.map { |story|
            Story.create(title: story[:title], image: story[:image], description: story[:description], completed: story[:completed])
        }