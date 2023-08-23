class Account < ApplicationRecord

    validates :username, :password, :email, presence: true
    validates :username, length: { minimum: 5}
    validates :username, :password, uniqueness: true
    validates :password, length: { minimum: 6}
    # validate :pw_contain_number
    validate :pw_contain_number  

    has_many :addresses

    # make flag, flag is t/f, when condition is met flag changes

    def pw_contain_number
        # all we need to make/set flag
        # has_number = false
        # if password.includes?(0..9)
        # # changes flag  
        #     has_number = true
        # else 
            errors.add(:password, "must contain at least one number") unless ( 0..9 ).any? do |number|
                password.include?(number.to_s)
            end
        # end
    end
end 

