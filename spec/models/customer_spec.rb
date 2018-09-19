require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is valid with valid attributes" do
    customer = Fabricate(:customer_with_company)
    expect(customer).to be_valid
  end
end
