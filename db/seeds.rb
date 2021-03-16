# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


reading_list = ReadingList.create(name: 'Early Education', subject: 'Pre-K', description: "Books for beginners.")

book = Book.create(reading_list_id: reading_list.id, title: 'Goodnight Moon', author: 'Margaret Wise Brown', comments: 'A classic!', summary: 'A bedtime story.')
book_two = Book.create(reading_list_id: reading_list.id, title: 'Should I Share My Ice Cream?', author: 'Mo Willems', comments: 'Funny and adorable.', summary: 'An elephant contemplates the pros and cons of sharing his ice cream with a friend.')