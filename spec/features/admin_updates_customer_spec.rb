require 'rails_helper'

feature 'Admin creates customer' do
	scenario 'with valid input' do
    other_company = Fabricate(:company)
    customer = Fabricate(:customer)

		visit edit_customer_path(customer)

		fill_in 'First name', with: 'Jon'
		fill_in 'Last name', with: 'Doe'
    fill_in 'Email', with: 'jdoe@example.com'
    find('#customer_company_id').set(other_company.id)

		click_button 'Submit'

		expect(page).to have_content 'Jon Doe'

    customer = Customer.find(customer.id)
    expect(customer.first_name).to eq 'Jon'
    expect(customer.last_name).to eq 'Doe'
    expect(customer.email).to eq 'jdoe@example.com'
    expect(customer.company_id).to eq other_company.id
	end
end
