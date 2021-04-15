class Tenant < ApplicationRecord

    validates :firstname, presence: true,  length: {maximum: 50, minumum: 2}
    validates :lastname, presence: true,  length: {maximum: 50, minumum: 2}
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :phone_number, presence: true
    
    

    
    def full_name 
        "#{firstname } #{lastname}" 
    end
end
