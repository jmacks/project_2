# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all

Category.create(name: 'Animals')
Category.create(name: 'Babies')
Category.create(name: 'Nerds')
Category.create(name: 'Landscape')
Category.create(name: 'Idiots')
Category.create(name: 'Celebrities')
Category.create(name: 'Other')
