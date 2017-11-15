# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Vijay", photo: "www.google.com", bio: "I really like coding", contact: "vijaypraju04@gmail.com " "989-295-6092")
user2 = User.create(name: "Ramy", photo: "www.google.com", bio: "I am good at everything", contact: "vijaypraju04@gmail.com " "989-295-6092")
user3 = User.create(name: "Jason", photo: "www.google.com", bio: "I love coffee", contact: "vijaypraju04@gmail.com " "989-295-6092")
user4 = User.create(name: "Es", photo: "www.google.com", bio: "Javascript is my favorite", contact: "vijaypraju04@gmail.com " "989-295-6092")


target1 = Target.create(name: "Painting", category: "Art")
target2 = Target.create(name: "Drawing", category: "Art")

target3 = Target.create(name: "Javascript", category: "Programming")
target4 = Target.create(name: "Ruby", category: "Programming")

target5 = Target.create(name: "Football", category: "Sports")
target6 = Target.create(name: "Soccer", category: "Sports")


link1 = Link.create(user_id: 1, target_id: 1, kind: "Hobby")
link2 = Link.create(user_id: 2, target_id: 2, kind: "Passion")
link3 = Link.create(user_id: 3, target_id: 3, kind: "Passion")
link4 = Link.create(user_id: 4, target_id: 4, kind: "Hobby")
link5 = Link.create(user_id: 2, target_id: 5, kind: "Interest")
link6 = Link.create(user_id: 4, target_id: 5, kind: "Hobby")
link7 = Link.create(user_id: 1, target_id: 6, kind: "Interest")
