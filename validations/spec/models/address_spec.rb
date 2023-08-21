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
  it 'is not valid without city' do 
    address_3 = Address.create(street_number: 25, street_name: 'Laney Lane', state: 'CA', zip: 92115)
    expect(address_3.errors[:city]).to_not be_empty
  end
it 'is not valid without a state' do
  address_4 = Address.create(street_number: 2000, street_name: 'streetsky street', city: 'Sanny D', zip: 92101)
  expect(address_4.errors[:state]).to_not be_empty
  end
  it 'is not valid without a zip' do
  address_5 = Address.create(street_number: 500, street_name: 'culs-de-sac', city: 'San Bleepis', state: 'CSAA')
  expect(address_5.errors[:zip]).to_not be_empty
  end
  it 'is not valid with a duplicate street number, street name or zip' do
  address_7 = Address.create(street_number: 500, street_name: 'culs-de-sac', city: 'San Bleepis', state: 'CSAA', zip: 30302)
    address_8 = Address.create(street_number: 500, street_name: 'Sacs de Cull', city: 'Flan Shmeaygo', state: 'CSAA', zip: 29874)
    expect(address_8.errors[:street_number]).to_not be_empty
    # address_9 = Address.create(street_number: 1200, street_name: 'streetey street', city: 'Shmeaygo', state: 'CA', zip: 91233)
    # address_10 = Address.create(street_number: 1450, street_name: 'streetey street', city: 'deegleby', state: 'CA', zip: 9485)
    # expect(address_10.errors[:street_name]).to_not be_empty
    # address_11 = Address.create(street_number: 890, street_name: 'Flakey lane', city: 'LA', state: 'CA', zip: 92100)
    # address_12 = Address.create(street_number: 6540, street_name: 'Blake way', city: 'Monterey', state: 'CA', zip: 92100)
    # expect(address_12.errors[:zip]).to_not be_empty
  end
  it 'is not valid with a duplicate street name' do
      address_9 = Address.create(street_number: 1200, street_name: 'streetey street', city: 'Shmeaygo', state: 'CA', zip: 91233)
      address_10 = Address.create(street_number: 1450, street_name: 'streetey street', city: 'deegleby', state: 'CA', zip: 9485)
      expect(address_10.errors[:street_name]).to_not be_empty
  end
  it 'is not is not valid with a duplicate zip' do
      address_11 = Address.create(street_number: 890, street_name: 'Flakey lane', city: 'LA', state: 'CA', zip: 92100)
      address_12 = Address.create(street_number: 6540, street_name: 'Blake way', city: 'Monterey', state: 'CA', zip: 92100)
      expect(address_12.errors[:zip]).to_not be_empty
    end
end


