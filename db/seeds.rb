# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: 'My First Post', body: 'This is the body of the first post', rage: '1')
Post.create(title: 'My 2nd Post', body: 'This is the body of the 2nd post', rage: '1')
Post.create(title: 'My 3rd Post', body: 'This is the body of the 3rd post', rage: '1')