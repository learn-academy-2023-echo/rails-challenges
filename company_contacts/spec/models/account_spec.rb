require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is valid with valid attributes' do
    account_1 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    expect(account_1).to be_valid
  end

  it 'is not valid if username is less than 5 characters' do
    account_1 = Account.create(username:'bkt', password:'123abc', email:'bktran123@hotmail.com')
    expect(account_1.errors[:username]).to_not be_empty
  end

  it 'username must be unique' do
    account_1 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    account_2 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    expect(account_2.errors[:username]).to_not be_empty
  end 

  it 'is not valid if password is less than 6 characters' do 
    account_1 = Account.create(username:'bktran123', password:'123ab', email:'bktran123@hotmail.com')
    expect(account_1.errors[:password]).to_not be_empty
  end 

  it 'password must be unique' do
    account_1 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    account_2 = Account.create(username:'bktran123', password:'123abc', email:'bktran123@hotmail.com')
    expect(account_2.errors[:password]).to_not be_empty
  end

  it 'password must include at least 1 number' do
    account_1 = Account.create(username:'bktran123', password:'abcd', email:'bktran123@hotmail.com')
    expect(account_1.errors[:password]).to_not be_empty
  end

end

