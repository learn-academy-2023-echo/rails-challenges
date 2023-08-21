class Address < ApplicationRecord
    belongs_to :accounts, optional: true
    validates :street_number, :street_name, :city, :state, :zip, presence: true
    # validates :street_number, uniqueness: { scope: [:street_name, :zip] }
    validates :street_number, :uniqueness => { :scope => [:street_name, :zip] }
end

