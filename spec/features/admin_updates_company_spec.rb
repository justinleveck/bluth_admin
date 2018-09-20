require 'rails_helper'

feature 'Admin updates company' do
	scenario 'with valid input' do
    company = Fabricate(:company)

		visit edit_company_path(company)

		fill_in 'Name', with: 'New Company Name'
		click_button 'Submit'

		expect(page).to have_content 'New Company Name'
    expect(company.reload.name).to eq('New Company Name')
	end
end
