# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create(description: 'buy carrots', complete: true, due: 'October 18')
Task.create(description: 'make carrot soup', complete: false, due: 'October 19')
Task.create(description: 'roast carrots', complete: true, due: 'October 20')
Task.create(description: 'eat carrots and hummus', complete: true, due: 'October 20')
Task.create(description: 'give carrots to mom', complete: false, due: 'October 21')
Task.create(description: 'make carrot cake', complete: false, due: 'October 25')
Task.create(description: 'buy more carrots', complete: false, due: 'October 31')