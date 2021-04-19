class Paiement < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment

  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  



  def author
    self.tenant.full_name 
  end 

  def name 
    self.apartment.address 
  end

  def solde 
    self.apartment.rent.to_i - self.amount.to_i
  end 
end
