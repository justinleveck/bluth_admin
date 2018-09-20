require 'rails_helper'

feature 'Admin viewing customer' do
	scenario 'customer displays correctly' do
    customer = Fabricate(:customer)

		visit customer_path(customer)

    expect(page).to have_content(customer.first_name)
    expect(page).to have_content(customer.last_name)
    expect(page).to have_content(customer.email)
    expect(page).to have_content(customer.company.name)
    expect(page).to have_content(customer.created_at)
	end
end
