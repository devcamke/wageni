# spec/models/visitor_spec.rb
require 'rails_helper'

RSpec.describe Visitor, type: :model do
  it "is valid with valid attributes" do
    visitor = build(:visitor)
    expect(visitor).to be_valid
  end

  it "is not valid without a full name" do
    visitor = build(:visitor, full_name: nil)
    expect(visitor).not_to be_valid
  end

  it "is not valid without a phone number" do
    visitor = build(:visitor, phone_number: nil)
    expect(visitor).not_to be_valid
  end

  it "is not valid without a residential address" do
    visitor = build(:visitor, residential_address: nil)
    expect(visitor).not_to be_valid
  end

  # Add more examples based on your model validations and associations
end
