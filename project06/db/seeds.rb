# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Role.delete_all
Game.delete_all

Role.create(name: "admin")
Role.create(name: "member")

User.create(username: "administrator", password: "password", password_confirmation: "password", first: "John", last: "Johnson", email: "admin@gamez.com", role_id: Role.find_or_create_by_name("admin").id)
User.create(username: "member", password: "password", password_confirmation: "password", first: "Andy", last: "Anderson", email: "member@gamez.com", role_id: Role.find_or_create_by_name("member").id)

(1..33).each do |i|
  User.create(username: "member#{i}", password: "password", password_confirmation: "password", first: ['Member'].sample, last: ['Memberson'].sample, email: "member#{i}@gamez.com", role_id: Role.find_or_create_by_name("member").id)
end

Game.create(title: "Angry Birds", rating: "Amazing", user_id: User.find_or_create_by_username("member").id)
Game.create(title: "Scrabble", rating: "Good", user_id: User.find_or_create_by_username("member1").id)
Game.create(title: "Some Android Game", rating: "Horrible", user_id: User.find_or_create_by_username("administrator").id)
Game.create(title: "Another Game", rating: "Meh.", user_id: User.find_or_create_by_username("member").id)
Game.create(title: "Chess", rating: "Amazing", user_id: User.find_or_create_by_username("member2").id)
Game.create(title: "Doodle Jump", rating: "Amazing", user_id: User.find_or_create_by_username("administrator").id)
Game.create(title: "Checkers", rating: "Good", user_id: User.find_or_create_by_username("member3").id)
Game.create(title: "Uno", rating: "Good", user_id: User.find_or_create_by_username("member5").id)
