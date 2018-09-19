# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

5.times do
  Company.create(name: Faker::Company.name)
end

Company.all.each do |company|
  5.times do
    password = Faker::Internet.password

    Customer.create(
      company_id: company.id,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.first_name,
      email: Faker::Internet.email,
      password: password,
      password_confirmation: password
    )
  end
end


