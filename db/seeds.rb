# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Role.create(:role_name => "admin")
 User.create(:name => "lakshmi",:email => "lakshmi.kasireddy@tecra.com",:password => "password",:password_confirmation => "password",:role_id =>1)
 # Role.create(:role_name => "not_a_admin")
 # User.create(:name => "vidhya",:email => "vidhya.kasireddy@tecra.com",:password => "password",:password_confirmation => "password",:role_id =>2)
