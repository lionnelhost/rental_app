require "faker"

puts " paiements creation started......"

@tenants = Tenant.all
@apartment_ids = Apartment.all.pluck(:id)

@tenants.each  do |tenant|
    apart_id = @apartment_ids.pop
    10.times do 
        Paiement.create!({
            amount: rand(100000...1000000),
            period: Faker::Date.between(from: '2010-01-01', to: '2021-03-31'), #=> #<Date: 2014-09-24>
            tenant_id: tenant.id,
            apartment_id: apart_id
        }); 
        p '.'
    end
    
end



p 'OK.'
p "paiements creation completed ..."