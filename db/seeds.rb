# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book1 = Book.create!(name: 'Война и Мир', author: 'Л.Толстой', available_count: 10, year_of_publish: 1865)
book2 = Book.create!(name: '11/22/63', author: 'С.Кинг', available_count: 10, year_of_publish: 2011)
book3 = Book.create!(name: 'Алгоритмы и структуры данных', author: 'Т.Кормен', available_count: 10, year_of_publish: 2007)
book4 = Book.create!(name: 'МОЗИ', author: 'В.Пилиди', available_count: 10, year_of_publish: 2016)
book5 = Book.create!(name: 'Алгебра и геометрия', author: 'Я.Ерусалимский', available_count: 10, year_of_publish: 2015)

user = User.create!(password: '12345678', login: 'test', full_name: 'Test user',status: 'user',email: 'user@test.com', course: 3)
admin = User.create!(password: '12345678', login: 'test_admin',full_name: 'Test admin',status: 'admin',email: 'admin@test.com', course: 0)