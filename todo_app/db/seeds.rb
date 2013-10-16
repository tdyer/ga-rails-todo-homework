# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
item1 = Item.new(title: 'Go for a run', description: 'do it', urgent: false, important: true)
item2 = Item.new(title: 'Do laundry', description: 'do it', urgent: false, important: true)
item3 = Item.new(title: 'Pay NSTAR', description: 'do it', urgent: true, important: true)
