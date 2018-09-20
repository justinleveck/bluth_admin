require 'rails_helper'

feature 'Admin viewing company' do
	scenario 'company displays correctly' do
    company = Fabricate(:company)

		visit company_path(company)

    expect(page).to have_content(company.name)
	end
end
