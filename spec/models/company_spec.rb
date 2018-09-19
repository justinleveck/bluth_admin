require 'rails_helper'

RSpec.describe Company, type: :model do
  it "is valid with valid attributes" do
    expect(Company.new).to be_valid
  end
end
