require 'rails_helper'

feature 'Admin viewing customers' do
	scenario 'with valid input' do
    Fabricate.times(100, :company)

		visit companies_path

    expect(page).to have_xpath(".//tbody//tr", :count => 50)
	end
end
