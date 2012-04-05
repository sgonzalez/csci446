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

Game.create(title: "Angry Birds", rating: "", user_id: User.find_or_create_by_username("member1").id)