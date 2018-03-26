# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'zaqzaq@hoge.co.jp', password: 'zaqzaq')


Genre.seed do |s|
	s.id = 1
	s.genre_name = "all"
end
Genre.seed do |s|
	s.id =2
	s.genre_name = "tops"
end
Genre.seed do |s|
	s.id = 3
	s.genre_name = "bottoms"
end
Genre.seed do |s|
	s.id = 4
	s.genre_name = "shoes"
end
Genre.seed do |s|
	s.id = 5
	s.genre_name = "bag"
end
Genre.seed do |s|
	s.id = 6
	s.genre_name = "jacket"
end
Genre.seed do |s|
	s.id = 7
	s.genre_name = "coat"
end
Genre.seed do |s|
	s.id = 8
	s.genre_name = "dress"
end
Genre.seed do |s|
	s.id = 9
	s.genre_name = "onepiece"
end
Genre.seed do |s|
	s.id = 10
	s.genre_name = "knit"
end
Genre.seed do |s|
	s.id = 11
	s.genre_name = "cardigan"
end
Genre.seed do |s|
	s.id = 12
	s.genre_name = "accessory"
end
Genre.seed do |s|
	s.id = 13
	s.genre_name = "belt"
end
Genre.seed do |s|
	s.id = 14
	s.genre_name = "cap"
end
Genre.seed do |s|
	s.id = 15
	s.genre_name = "hat"
end
Genre.seed do |s|
	s.id = 16
	s.genre_name = "glass"
end
Genre.seed do |s|
	s.id = 17
	s.genre_name = "watch"
end
Genre.seed do |s|
	s.id = 18
	s.genre_name = "pierce"
end
Genre.seed do |s|
	s.id = 19
	s.genre_name = "ring"
end
Genre.seed do |s|
	s.id = 20
	s.genre_name = "scarf"
end
Genre.seed do |s|
	s.id = 21
	s.genre_name = "snood"
end
Genre.seed do |s|
	s.id = 22
	s.genre_name = "stall"
end
Genre.seed do |s|
	s.id = 23
	s.genre_name = "tie"
end
Genre.seed do |s|
	s.id = 24
	s.genre_name = "tights"
end

