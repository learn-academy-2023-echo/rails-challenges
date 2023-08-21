require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    address_1 = Address.create(street_number: 35, street_name: '123 coding st', city: 'San Diego', state: 'CA', zip: 92115)
    expect(address_1).to be_valid
  end
  it 'is not valid without street_number' do
    address_1 = Address.create(street_name: '123 coding st', city: 'San Diego', state: 'CA', zip: 92115)
    expect(address_1.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without street_name' do
    address_2 = Address.create(street_number: 25, city: 'San Diego', state: 'CA', zip: 92115)
    expect(address_2.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without city'
end
