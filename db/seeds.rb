# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Vijay", photo: "https://lh5.googleusercontent.com/-KXj_fTpYYmU/AAAAAAAAAAI/AAAAAAAAABo/JVVT3fkMWXs/photo.jpg", bio: "I really like coding. One day I want to save the world with my coding skills. My dream is to become as good of a coder as Ramy.", contact: "vijaypraju04@gmail.com")
user2 = User.create(name: "Ramy", photo: "https://pbs.twimg.com/profile_images/1395403972/bbdp.jpg", bio: "I am good at everything. I think mediterranean food is the best cuisine on the planet. I make projects for fun at all times", contact: "ramyalwayskillinit99@yahoo.com")
user3 = User.create(name: "Jason", photo: "https://pbs.twimg.com/profile_images/791481141370974209/vJAILr2O_400x400.jpg", bio: "I love coffee. I would have to say that my favorite drink is Negroni. Coming to flatiron school brings me happiness everyday.", contact: "jasonrocks84@gmail.com")
user4 = User.create(name: "Es", photo: "https://i.ytimg.com/vi/RvYQkfDxK3s/hqdefault.jpg", bio: "Javascript is my favorite. Make sure to always slap it on the body. I also like to slap it on the DOM.", contact: "estheman204@hotmail.com")
user5 = User.create(name: "Avi", photo: "https://i.ytimg.com/vi/RvYQkfDxK3s/hqdefault.jpg", bio: "I love wework and I sold my soul to them. One day I would like to become a master DJ. I love my flatiron tattoos", contact: "avidjking92@yahoo.com")


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
link8 = Link.create(user_id: 5, target_id: 2, kind: "Interest")
