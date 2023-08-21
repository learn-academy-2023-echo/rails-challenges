class Account < ApplicationRecord
    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5 }
    validates :password, length: { minimum: 6 }
    validates :username, uniqueness: true
    validates :password, uniqueness: true
    validate :check_number
    def check_number
        unless self.password.match?(/\d+/)
            errors.add :password, 'Need to add a number into password'
        
        end
    end
end
