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

p1=Photo.new
p1.image="/sary/base1.jpg"

p2=Photo.new
p2.image="/sary/base2.jpg"

p3=Photo.new
p3.image="/sary/base3.jpg"

p4=Photo.new
p4.image="/sary/base4.jpg"

t1=Maison.new
t2=Maison.new
t3=Maison.new
t4=Maison.new

t1.title="Maison calme"
t1.prix="Ar20.000"
t1.equipement="Equipement de base"
t1.lieux="Bord de route"
t1.duree="4 mois"

t2.title="Maison cool"
t2.prix="Ar30.000"
t2.equipement="Wifi"
t2.lieux="Pas trop loin"
t2.duree="5 mois"

t3.title="Maison calme"
t3.prix="Ar20.000"
t3.equipement="Equipement de base"
t3.lieux="jungle"
t3.duree="4 mois"

t4.title="Maison blanche"
t4.prix="Ar10.000"
t4.equipement="Television"
t4.lieux="Pres de l'université"
t4.duree="8 mois"

t1.photos.push(p1)
t2.photos.push(p2)
t3.photos.push(p3)
t4.photos.push(p4)

a1.maisons.push(t1)
a1.maisons.push(t2)
a2.maisons.push(t3)
a2.maisons.push(t4)

a1.save
p1.save
t1.save

a2.save
p2.save
t2.save


p3.save
t3.save


p4.save
t4.save





AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?