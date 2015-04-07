# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


  Profile.create(first_name: 'TestFirstName', last_name: 'testlast',birthday: '1/1/2014', password: 'test',  email: 'test@test.com')
  Category.create(category_name: 'Mathematics')
  Category.create(category_name: 'History')
  Category.create(category_name: 'Geography')
  Category.create(category_name: 'Sports')
  Category.create(category_name: 'Movies')
  Category.create(category_name: 'Fun')
  Category.create(category_name: 'Cartoon')
  Category.create(category_name: 'Science')