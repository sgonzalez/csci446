# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Role.delete_all

Role.create(name: "admin")
Role.create(name: "member")

User.create(username: "administrator", password: "administrator", password_confirmation: "administrator", first: "admin", last: "admin", email: "admin@gamez.com", role_id: Role.find_or_create_by_name("admin").id)

#(1..33).each do |i|
  #User.create(username: "administrator", password: "administrator", password_confirmation: "administrator", first: "admin", last: "admin", email: "admin@gamez.com")
  #Article.create(title: "user#{i}", author: Author.find_or_create_by_username(['Somebody','Fake Guy Jr'].sample), body: "", creation: Date.today,)
#end