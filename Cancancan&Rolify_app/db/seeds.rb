# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# id를 3개를 만들고, 각각 게시글 3개를 만듬
(1..3).each do |i|
    User.create(email: "donghun#{i}@gmail.com", password: "donghun#{i}", password_confirmation: "donghun#{i}")
    (1..3).each do |j|
        Note.create(user_id: i, title: "title#{i}#{j}", content: "content#{i}#{j}")
    end
end