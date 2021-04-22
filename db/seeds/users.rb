puts "create sample user ...."

user = User.new({
    email: 'admin@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    firstname: "John",
    lastname: "DOE",
    phone_number: "786789878"
});

if user.save!
    puts "user created !"
else 
    errors.full_messages.each do |msg|
        puts msg
    end
end