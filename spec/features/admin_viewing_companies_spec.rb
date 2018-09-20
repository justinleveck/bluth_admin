require 'rails_helper'

feature 'Admin viewing companies' do
	scenario 'with pagination' do
    Fabricate.times(100, :company)

		visit companies_path

    expect(page).to have_xpath(".//tbody//tr", :count => 50)
	end
end
