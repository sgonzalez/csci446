# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Product.delete_all

# . . .
Product.create(title: 'Super Book',
description:%{<p>This book is a book that teaches you.<p>},
image_url: 'http://cdn.dailyclipart.net/wp-content/uploads/medium/Book4.jpg',
price: 49.95)
# . . .
