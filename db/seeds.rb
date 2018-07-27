# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.destroy_all

2.times do
    Task.create(deadline: Date.today.strftime('%B %e, %Y'), description: Faker::Company.bs.capitalize)
end

4.times do
    Task.create(deadline: Faker::Date.between(Date.today, 3.days.after).strftime('%B %e, %Y'), description: Faker::Company.bs.capitalize)
end