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
description:%{<p>This book is a book that teaches you. But do not ask me why I chose apple's address book icon, it just looks really cool! Anyway this is a book that is expensive compared to a penny. ;)<p>},
image_url: 'http://upload.wikimedia.org/wikipedia/en/1/13/Address_Book_Icon.png',
price: 49.95)
# . . .
Product.create(title: 'Kleenex',
description:%{<p>Makes blowing your nose <i>very</i> <b>easy</b>. I like to use fancy HTML text formating in this description. Kleenex are very useful when you are sick, they start out nice and clean and then they turn gooey and disgusting; YUCK!<p>},
image_url: 'http://moneysavingmom.com/wp-content/uploads/2010/03/211_kleenex.jpg',
price: 10.00)
# . . .
