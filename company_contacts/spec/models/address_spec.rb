require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street number' do
    user = Address.create street_name: 'Hibbard', city:'Fountain', state:"co", zip:'80817'
    expect(user.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without a street name' do
    user = Address.create street_number: '2116', city:'Fountain', state:"co", zip:'80817'
    expect(user.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without a city' do
    user = Address.create street_number: '2116', street_name: 'Hibbard', state:"co", zip:'80817'
    expect(user.errors[:city]).to_not be_empty
  end
  it 'is not valid without a zip' do
    user = Address.create street_number: '2116', street_name: 'Hibbard', state:"co", city:'Fountain'
    expect(user.errors[:zip]).to_not be_empty
  end
end
