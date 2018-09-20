require 'rails_helper'

feature 'Admin deletes company' do
	scenario 'with valid input' do
    company = Fabricate(:company)
    expect(Company.count).to eq(1)

		visit companies_path
    expect(page).to have_content(company.name)

    click_link 'Delete'

    expect(Company.count).to eq(0)
	end
end
