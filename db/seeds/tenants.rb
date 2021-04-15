require "faker"

puts " tenants creation ......"

10.times do 
    Tenant.create!({
        firstname: Faker::Name.first_name,
        lastname: Faker::Name.last_name,
        phone_number: Faker::PhoneNumber.cell_phone_in_e164,
        profession: Faker::Company.profession,
        email: Faker::Internet.email(domain: 'finetechgroup'),
        date_of_birth: Faker::Date.between(from: '1950-01-01', to: '2000-12-31') #=> #<Date: 2014-09-24>

    }); 
    p '.'
end



p 'OK.'
p "tenants creation complete ..."