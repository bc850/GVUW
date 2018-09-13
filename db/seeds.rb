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
  :published => true,
)

News.create!(
  :title => 'Mud Run',
  :body => 'test',
  :description => 'testing',
  :slug => 'mud-run',
  :banner_image_url => 'https://images.pexels.com/photos/33688/delicate-arch-night-stars-landscape.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 2,
  :published => true,
)

News.create!(
  :title => 'United Way Golf Tournament',
  :body => 'test',
  :description => 'testing',
  :slug => 'united-way-golf-tournament',
  :banner_image_url => 'https://images.pexels.com/photos/730896/pexels-photo-730896.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 1,
  :published => true,
)

News.create!(
  :title => 'United Way Annual Campaign',
  :body => 'test',
  :description => 'testing',
  :slug => 'united-way-annual-campaign',
  :banner_image_url => 'https://images.pexels.com/photos/1093645/pexels-photo-1093645.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => 1,
  :published => true,
)

####### EVENTS CREATION #######
Event.delete_all
Event.create!(
  :title => 'Possum Creek Mud Run',
  :body => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
  :description => 'This is the Possum Creek Mud Run near Ray City, GA. It will happen and be awesome. Many Moody AFB personnel will probably be there.',
  :slug => 'possum-creek-mud-run',
  :banner_image_url => 'https://images.pexels.com/photos/914128/pexels-photo-914128.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => '1',
  :published => 'true',
  :featured => 'true',
  :published_at => '2018-09-12',
)

Event.create!(
  :title => 'SGMC Blood Drive',
  :body => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
  :description => 'This is the Possum Creek Mud Run near Ray City, GA. It will happen and be awesome. Many Moody AFB personnel will probably be there.',
  :slug => 'sgmc-blood-drive',
  :banner_image_url => 'https://images.pexels.com/photos/1064566/pexels-photo-1064566.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => '1',
  :published => 'true',
  :featured => 'true',
  :published_at => '2018-09-11',
)

Event.create!(
  :title => 'Hawaiian BBQ Sandwich Sale',
  :body => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
  :description => 'This is the Possum Creek Mud Run near Ray City, GA. It will happen and be awesome. Many Moody AFB personnel will probably be there.',
  :slug => 'hawaiian-bbq-sandwich-sale',
  :banner_image_url => 'https://images.pexels.com/photos/951382/pexels-photo-951382.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => '1',
  :published => 'true',
  :featured => 'true',
  :published_at => '2018-09-02',
)

Event.create!(
  :title => 'Habitat for Humanity Birdhouse Auction',
  :body => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
  :description => 'This is the Possum Creek Mud Run near Ray City, GA. It will happen and be awesome. Many Moody AFB personnel will probably be there.',
  :slug => 'habitat-for-humanity-birdhouse-auction',
  :banner_image_url => 'https://images.pexels.com/photos/675764/pexels-photo-675764.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  :author_id => '1',
  :published => 'true',
  :featured => 'true',
  :published_at => '2018-08-24',
)
