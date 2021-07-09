# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'taro', email: 'taro@techacademy.jp', password: 'taro1234')
User.create(name: 'hanako', email: 'hanako@techacademy.jp', password: 'hanako1234')

(1..50).each do |number|
  rand = rand(2) + 1
  user = User.find(rand)
  user.tasks.build(status: 'status ' + number.to_s, content: 'test content ' + number.to_s)
  user.save
end