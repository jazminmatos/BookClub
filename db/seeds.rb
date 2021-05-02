# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Books
# 5.times do
#     Book.create([{
#         title: Faker::Book.title,
#         author: Faker::Book.author,
#         summary: Faker::Lorem.paragraph
#     }])
# end


# Comments
5.times do
    Book.create([{
        title: Faker::Book.title,
        author: Faker::Book.author,
        summary: Faker::Lorem.paragraph
    }])

    Comment.create([{
        content: Faker::Lorem.sentence(word_count: 3)
    }])

    Club.create([{
        name: Faker::Creature::Animal.name
    }])

    User.create([{
        email: Faker::Internet.email,
        password: Faker::Lorem.characters(number: 10)
    }])
end