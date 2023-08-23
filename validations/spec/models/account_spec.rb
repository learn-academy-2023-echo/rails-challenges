require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account_1 = Account.create(username: 'peter123', password: 'peteratlearn', email: 'peter@learn.org')
    expect(account_1).to be_valid
  end 
  it 'is not valid without username' do
    account_1 = Account.create(password: 'peteratlearn', email: 'peter@learn.org')
    expect(account_1.errors[:username]).to_not be_empty
  end
  it 'is not valid without password' do
    account_1 = Account.create(username: 'peter124', email: 'peter@learn.org')
    expect(account_1.errors[:password]).to_not be_empty
  end
  it 'is not valid without email' do
    account_1 = Account.create(username: 'peter125', password: 'peteratlearn')
    expect(account_1.errors[:email]).to_not be_empty
  end
  it 'is not valid if username is less than 5 characters' do
    account_2 = Account.create(username: 'pet', password: 'hello', email: 'peter@learn.org')
    expect(account_2.errors[:username]).to_not be_empty
  end
  it 'is not valid if password is less than 6 characters' do
    account_5 = Account.create(username: 'graham', password: 'fly', email: 'grahamfly@learn.org')
    expect(account_5.errors[:password]).to_not be_empty
  end
  it 'does not allow duplicate username' do
    account_3 = Account.create(username: 'peter345', password: 'hello123', email: 'peter@learn.org')
    account_4 = Account.create(username: 'peter345', password: 'hello12345', email: 'peter@learn.org')
    expect(account_4.errors[:username]).to_not be_empty
  end
  it 'does not allow duplicate password' do
    account_2 = Account.create(username: 'peter123', password: 'hello345', email: 'peter@learn.org')
    account_3 = Account.create(username: 'peter345', password: 'hello345', email: 'peter@learn.org')
    expect(account_3.errors[:password]).to_not be_empty
  end
  it 'is not valid without a nummber in the password' do
  account_6 = Account.create(username: 'peter123', password: 'peteratlearn', email: 'peter@learn.org')
  expect(account_6.errors[:password]).to_not be_empty
  end
end