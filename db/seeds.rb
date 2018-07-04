# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
SchoolClass.destroy_all

Student.create(first_name: "Essa", last_name: "Hijazi")
Student.create(first_name: "Omar", last_name: "Hijazi")
Student.create(first_name: "Obadah", last_name: "Hijazi")
Student.create(first_name: "Karam", last_name: "Hijazi")
Student.create(first_name: "Salman", last_name: "Hijazi")


SchoolClass.create(title: "Class 1", room_number: 1)
SchoolClass.create(title: "Class 2", room_number: 2)
SchoolClass.create(title: "Class 3", room_number: 3)
SchoolClass.create(title: "Class 4", room_number: 4)
SchoolClass.create(title: "Class 5", room_number: 5)
