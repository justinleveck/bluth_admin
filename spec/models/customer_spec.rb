require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "is valid with valid attributes" do
    customer = Fabricate(:customer)
    expect(customer).to be_valid
  end
end
