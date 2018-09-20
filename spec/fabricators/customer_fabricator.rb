Fabricator(:customer) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Internet.email }
  company { Fabricate.create(:company) }
  password { Faker::Internet.password }
end
