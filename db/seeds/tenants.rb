require "faker"

puts " tenants creation ......"

@apartments = Apartment.all.pluck(:id)

@apartments.each  do 
    Tenant.create!({
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        phone_number: "778767676",
        profession: Faker::Company.profession,
        email: Faker::Internet.email,
        date_of_birth: Faker::Date.between(from: '1950-01-01', to: '2000-12-31'), #=> #<Date: 2014-09-24>
        status: "active"
    }); 
    p '.'
end



p 'OK.'
p "tenants creation complete ..."