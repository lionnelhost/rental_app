# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Paiement.delete_all
Apartment.delete_all
Tenant.delete_all 
User.delete_all


# laod users
load Rails.root.join("db/seeds/users.rb")

#load apartments
load Rails.root.join("db/seeds/apartments.rb")

# Load tenants
load Rails.root.join("db/seeds/tenants.rb")

# Load paiements 
load Rails.root.join("db/seeds/paiements.rb")