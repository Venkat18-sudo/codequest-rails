<<<<<<< HEAD
User.create!(name: "Example User",
			email: "example@example.com",
			password: "something",
			password_confirmation: "something",
			admin: true )

5.times do |n|
	name = Faker::Name.name
	email = "email-#{n}@example.com"
	password = "password"
	User.create!(name: name,
		email: email,
		password: password,
		password_confirmation: password)
end

users = User.all
50.times do
	content = Faker::Lorem.sentence(word_count: 5)
	users.each { |user| user.microposts.create!(content:content)}
end
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
>>>>>>> fea79a16629de1290d9058f07d792a9809124d2c
