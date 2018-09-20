require 'rails_helper'

feature 'Admin viewing customers' do
	scenario 'with pagination' do
    company = Fabricate(:company)
    Fabricate.times(100, :customer, company: company)

		visit customers_path

    expect(page).to have_xpath(".//tbody//tr", :count => 50)
	end

	scenario 'filtering by company' do
    company_1 = Fabricate(:company)
    Fabricate.times(5, :customer, company: company_1)

    company_2 = Fabricate(:company)
    Fabricate.times(10, :customer, company: company_2)

    visit customers_path company_id: company_1.id

    expect(page).to have_xpath(".//tbody//tr", :count => 5)
	end
end
