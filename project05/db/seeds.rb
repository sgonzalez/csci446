# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

(1..95).each do |i|
  Article.create(title: "My Article #{i}", author: 'Fake Guy Jr', body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam lacinia ipsum at justo sagittis id adipiscing nisi congue. Nunc vel dui neque. Aliquam egestas nunc at lectus elementum dapibus. Fusce quis tellus felis. Aliquam erat volutpat. Vivamus lacinia suscipit dui ut sollicitudin. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam sed sapien sem. Phasellus fringilla, dui vel consequat mattis, augue nibh bibendum libero, in venenatis sapien turpis at mi. Nulla facilisi. Mauris iaculis bibendum vulputate. Duis sagittis justo sed lacus feugiat consequat. Sed id laoreet erat. Morbi id aliquet erat.

  Praesent ac dui eget urna eleifend sagittis. Sed nec diam erat, eu dictum lectus. Proin faucibus, orci et facilisis cursus, nisi libero rhoncus diam, id imperdiet risus lorem at magna. Praesent velit magna, adipiscing nec posuere et, volutpat ut nibh. Suspendisse quis vehicula nisi. Suspendisse potenti. Vestibulum at lorem non ante feugiat adipiscing ac sed velit. Proin lobortis mauris ut nunc venenatis et varius augue facilisis. Aenean eleifend massa eget elit vestibulum faucibus facilisis nibh vestibulum.", creation: Date.today,)
end