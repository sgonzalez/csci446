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
image_url: 'http://upload.wikimedia.org/wikipedia/en/1/13/Address_Book_Icon.png',
price: 49.95)
# . . .
Product.create(title: 'Kleenex',
description:%{<p>Makes blowing your nose very <i>easy</i><p>},
image_url: 'http://moneysavingmom.com/wp-content/uploads/2010/03/211_kleenex.jpg',
price: 10.00)
# . . .
