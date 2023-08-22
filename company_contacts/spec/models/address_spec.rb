require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is valid with valid attributes' do
    # account_1 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    address_1 = Address.create(street_number:123, street_name:'Memory Lane', city:'San Diego', state: 'CA', zip: 60630, account_id:1)
    expect(address_1).to be_valid
  end

  
end
