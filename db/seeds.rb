# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
City.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

user = User.create(name:'Conrad', city:'Tampa', user_photo:'http://stevensegallery.com/200/300')
city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')

city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')

city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')

city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')

city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')

city = City.create(name: 'Atlanta', photo_url:'http://vnews.agency/uploads/posts/2015-12/1450082583_atlanta5.jpg', summary: 'Atlanta is the capital of the U.S. state of Georgia. It played an important part in both the Civil War and the 1960s Civil Rights Movement.', latitude:'33.7490', longitude:'84.3880', state:'Georgia', country:'US', population:'472,522')
activity = Activity.create(city: city, name:'Childrens Museum of Atlanta', photo_url:'https://res.cloudinary.com/mommy-nearest/image/upload/c_fill,h_450,w_800/wzxholb9gni0px8akqls.jpg', activity_type:'indoor museum', summary:'The Childrens Museum of Atlanta is a childrens museum located in Atlanta, Georgia.', age_requirement:'0-8', admission_cost:'15.95 per adult and child Under 1: free')
activity = Activity.create(city: city, name:'Georgia Aquarium', photo_url:'https://wwcdn.weddingwire.com/vendor/970001_975000/971620/thumbnails/800x800_1494259929389-oceans-ballroom-reception.jpg', activity_type:'indoor aquarium', summary:'The Georgia Aquarium is a public aquarium in Atlanta, Georgia, USA. It houses more than a hundred thousand animals and represents several thousand species, all of which reside in 10 million US gallons of marine and salt water.', age_requirement:'none', admission_cost:'Average cost 30.00 per admission')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
activity = Activity.create(city: city, name:'Stone Mountain Park', photo_url:'http://momvoyage.hilton.com/wp-content/uploads/2014/01/IMG_5289-940x564.jpg', activity_type:'outdoor', summary:'Vast, scenic park with activities, golf, lodging & a cable car ride to a historic, carved peak..', age_requirement:'none', admission_cost:'50.00 for all access per adult and child')
