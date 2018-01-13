# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.all
users.each { |e| e.destroy }

friendships = Friendship.all
friendships.each { |e| e.destroy }


puts "Creating users"
user_a = User.create(email: "sesboue.olivier@gmail.com", password: "azerty", name: "Olivier Sesboue")
user_b = User.create(email: "titi.toto@gmail.com", password: "azerty", name: "Titi Toto")
user_c = User.create(email: "zizou@gmail.com", password: "azerty", name: "Zinedine Zidane")
user_d = User.create(email: "canto@gmail.com", password: "azerty", name: "Eric Cantona")

# User.all.each do |detail|
#   puts detail.name
#   puts detail.email
#   puts detail.id
# end

puts user_a.save!


user_a.friend_request(user_b)
user_b.accept_request(user_a)

user_a.friend_request(user_c)
user_c.accept_request(user_a)

user_a.friend_request(user_d)
user_d.accept_request(user_a)

if user_a.friends_with?(user_b)
  puts "Friendship sucess"
else
  puts "Problem with friendship"
end

# puts user_a.name
# if user_a.save == true
#   puts "user_a saved"
# else
#   puts "error in saving"
# end


# puts "Creating friendships"
# a = Friendship.new
# b = Friendship.new
# c = Friendship.new

# puts "Checking user ids"
# puts user_a.id
# puts user_b.id
# puts user_c.id
# puts user_d.id

# a.user_id = user_a.id
# a.friend_id = user_b.id
# a.save

# b.user_id = user_a.id
# b.friend_id = user_c.id
# b.save

# c.user_id = user_a.id
# c.friend_id = user_d.id
# c.save

# puts a.user_id
# puts a.friend_id
# puts b.user_id
# puts b.friend_id
# puts c.user_id
# puts c.friend_id

# Friendship.all.each do |friend|
#   puts "Next friendship is"
#   puts friend.user_id
#   puts friend.friend_id
# end

puts "seed completed"
