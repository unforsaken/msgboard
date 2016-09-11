# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: "Second Post", content: "This is my second post!")
Post.create(title: "Third Post", content: "This is my third post!")
Post.create(title: "Fourth Post", content: "This is my fourth post!")
Comment.create(title: "first comment for first post", post_id: 1)
Comment.create(title: "second comment for first post", post_id: 1)
Comment.create(title: "first comment for second post", post_id: 2)
Comment.create(title: "first comment for third post", post_id: 3)
Comment.create(title: "first comment for fourth post", post_id: 4)

