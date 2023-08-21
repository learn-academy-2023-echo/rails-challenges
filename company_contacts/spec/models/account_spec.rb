require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    user = Account.create password: '45G56up', email: 'mchavez@gmail.com'
    
    expect(user.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password' do
    user = Account.create username: 'Mchavez', email: 'mchavez@gmail.com'

    expect(user.errors[:password]).to_not be_empty
  end
  it 'is not valid without a email' do
    user = Account.create username: 'Mchavez', password: '46G56up'

    expect(user.errors[:email]).to_not be_empty
  end
  it 'is not valid without a username with less than 5 characters' do
    user = Account.create username: 'Mcha', password: '45G56up', email: 'mchavez@gmail.com'
    
    expect(user.errors[:username]).to_not be_empty
  end
  it 'is not valid if username is a dupe' do
    user = Account.create username: 'Mchavez', password: '45G56up', email: 'mchavez@gmail.com'
    dupe = Account.create username: 'Mchavez', password: '45G56up', email: 'mchavez@gmail.com'
    
    expect(dupe.errors[:username]).to_not be_empty
  end
  it 'is not valid if password is shorter than 6 characters' do
    user = Account.create username: 'Mchavez', password: '45G56', email: 'mchavez@gmail.com'

    expect(user.errors[:password]).to_not be_empty
  end
  it 'is not valid if password is not a dupe' do
    user = Account.create username: 'Mchavez', password: '45G56', email: 'mchavez@gmail.com'
    dupe = Account.create username: 'Mchavez', password: '45G56', email: 'mchavez@gmail.com'
    expect(dupe.errors[:password]).to_not be_empty
  end

end
