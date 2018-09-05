# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.delete_all
Author.create!(
  :name => 'Brandon Corbett',
  :email => 'brandon.corbett@sgatechnology.com',
  :password => 'changeme',
  :password_confirmation => 'changeme'
)

Author.create!(
  :name => 'Leigh Anne Burns',
  :email => 'laburns@sgatechnology.com',
  :password => 'changeme',
  :password_confirmation => 'changeme'
)


####### NEWS CREATION #######
News.delete_all
News.create!(
  :title => 'Day of Caring',
  :body => 'test',
  :description => 'testing',
  :slug => 'day-of-caring',
  :banner_image_url => 'https://images.pexels.com/photos/1048256/pexels-photo-1048256.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 2,
)

News.create!(
  :title => 'Mud Run',
  :body => 'test',
  :description => 'testing',
  :slug => 'mud-run',
  :banner_image_url => 'https://images.pexels.com/photos/33688/delicate-arch-night-stars-landscape.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 2,
)

News.create!(
  :title => 'United Way Golf Tournament',
  :body => 'test',
  :description => 'testing',
  :slug => 'united-way-golf-tournament',
  :banner_image_url => 'https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 1,
)

News.create!(
  :title => 'United Way Annual Campaign',
  :body => 'test',
  :description => 'testing',
  :slug => 'united-way-annual-campaign',
  :banner_image_url => 'https://images.pexels.com/photos/1093645/pexels-photo-1093645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 1,
)
