Fabricator(:customer_with_company, from: :customer) do
  company { Fabricate.create(:company) }
end
