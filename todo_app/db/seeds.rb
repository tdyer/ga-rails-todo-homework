# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create(name: "Do Laundry", complete: true, due_date: "Today")
Task.create(name: "Go See Savages", complete: false, due_date: "Tonight")
Task.create(name: "WDI Project Brainstorm", complete: false, due_date: "Tomorrow")
Task.create(name: "Go Rock Climbing", complete: false, due_date: "Thursday")


