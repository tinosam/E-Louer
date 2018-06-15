# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a1=Agent.new
a1.email="a1@a.com"
a1.password="123456"
a1.fullname="Agent First"
a1.number="033143245"

a2=Agent.new
a2.email="a2@a.com"
a2.password="123456"
a2.fullname="Agent Second"
a2.number="034143245"

a1.save
a2.save




AdminUser.create!(email: 'nrjmeyer@gmail.com', password: '123456', password_confirmation: '123456') if Rails.env.development?