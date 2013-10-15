# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create(description: "walk the dog", flag: true, due: "Tuesday, Oct 15, 2013")
Task.create(description: "buy milk", flag: false, due: "Wednesday, Oct 16, 2013")
Task.create(description: "finish homework", flag: true, due: "Tuesday, Oct 15, 2013")
Task.create(description: "watch Pearl Jam concert", flag: false, due: "Tuesday, Oct 15, 2013")
