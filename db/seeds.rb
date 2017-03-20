# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

User.create(email: 'bla@bla.bla', password: 'password', password_confirmation: 'password')
shop = Shop.create(name: 'Крошка картошка', desc: 'Самая вкусная картошка в городе')

shop.dishes.create!(name: 'Горшочек',
                    desc: 'Крошка картошка в горшочке',
                    price: 255,
                    image_file_name: "сырная_пицца.jpeg",
                    image_content_type: "image/jpeg",
                    image_file_size: 7257,
                    image_updated_at: "2017-03-16 11:11:55")
