require 'rails_helper'

feature 'Admin creates customer' do
	scenario 'with valid input' do
    company = Fabricate(:company)

		visit new_customer_path

		fill_in 'First name', with: 'Jon'
		fill_in 'Last name', with: 'Doe'
    fill_in 'Email', with: 'jdoe@example.com'
    find('#customer_company_id').set(company.id)
    fill_in 'Password', with: 'abc123'
    fill_in 'Password confirmation', with: 'abc123'

		click_button 'Submit'

		expect(page).to have_content 'Jon Doe'

    customer = Customer.find_by_email('jdoe@example.com')
    expect(customer).to be_valid
	end
end
