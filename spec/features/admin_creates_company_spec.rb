require 'rails_helper'

feature 'Admin creates company' do
	scenario 'with valid input' do
    expect(Company.count).to eq(0)

		visit new_company_path

		fill_in 'Name', with: 'Company Name'
		click_button 'Submit'

		expect(page).to have_content 'Company Name'

    expect(Company.count).to eq(1)
    expect(Company.first.name).to eq('Company Name')
	end
end
