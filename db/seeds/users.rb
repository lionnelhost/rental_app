puts "create sample user ...."

user = User.new({
    email: 'test@gmail.com',
    password: 'password',
    password_confirmation: 'password'
});

if user.save!
    puts "user created !"
else 
    errors.full_messages.each do |msg|
        puts msg
    end
end