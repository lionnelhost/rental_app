require "faker"

puts " apartment creation ......"

10.times do 
    Apartment.create!({
        address: Faker::Address.street_address,
        nb_pieces: rand(2..6),
        areas: rand(100...1000),
        rent: rand(100000...1000000),
        caution: rand(100000...10000000),
        description: Faker::Lorem.paragraph_by_chars
    }); 
    p '.'
end



p 'OK.'
p "apartments creation complete ..."