require 'rails_helper'

feature 'Admin viewing customers' do
	scenario 'with valid input' do
    company = Fabricate(:company)
    Fabricate.times(100, :customer, company: company)

		visit customers_path

    expect(page).to have_xpath(".//tbody//tr", :count => 50)
	end
end
