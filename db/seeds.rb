# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Place.create!([
{ "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
{ "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
{ "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"},
{ "name": "Bangalore", "latitude": "12.9716", "longitude": "77.5946"},
{ "name": "Delhi", "latitude": "28.7041", "longitude": "77.1025"},
{ "name": "Kolkata", "latitude": "22.5726", "longitude": "88.3639"}
])

User.create!([
{ "user_name": "User1","email": "user1@gmail.com", "password": "password","password_confirmation": "password"},{ "user_name": "User2","email": "user2@gmail.com", "password": "password","password_confirmation": "password"},{ "user_name": "User3","email": "user3@gmail.com", "password": "password","password_confirmation": "password"},{ "user_name": "User4","email": "user4@gmail.com", "password": "password","password_confirmation": "password"}])

# Share.create!([{"user_id": 1,"place_id": 1,"receipient_id": 2},{"user_id": 1,"place_id": 1,"receipient_id": 3},{"user_id": 1,"place_id": 1,"receipient_id": 4},{"user_id": 2,"place_id": 1,"receipient_id": 3},{"user_id": 3,"place_id": 1,"receipient_id": 4},{"user_id": 2,"place_id": 1,"receipient_id": 1},{"user_id": 4,"place_id": 1,"receipient_id": 4},{"user_id": 2,"place_id": 1,"receipeint_id": 2}])
places = Place.all 
places.each do |p|
  p.shares.create(user_id: User.first.id,place_id: p.id, receipient_id: User.last.id)
end