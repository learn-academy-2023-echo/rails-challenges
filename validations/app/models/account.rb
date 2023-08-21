class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
    validates :username, uniqueness: true
    validates :password, uniqueness: true
end
