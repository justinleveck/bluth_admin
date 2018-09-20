require 'rails_helper'

feature 'Admin deletes customer' do
	scenario 'deleting a customer' do
    expect(Customer.count).to eq(0)

    customer = Fabricate(:customer)
    expect(Customer.count).to eq(1)

		visit customers_path
    expect(page).to have_content(customer.email)

    click_link 'Delete'

    expect(Customer.count).to eq(0)
	end
end
