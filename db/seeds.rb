# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Role.create(:name => 'Admin')
Role.create(:name => 'Employee')
Role.create(:name => 'Student')
Role.create(:name => 'Parent')
User.create(email: "admin@triton.com" , password: "123456" , password_confirmation: "123456",
			first_name: "mostafa" , last_name: "hussein", user_name: "dexter" , role_ids: 1 )

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
