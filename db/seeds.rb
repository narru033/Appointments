# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username => 'Admin', :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password', :role => "owner" );
User.create(:username => 'Bob', :email => 'bob@example.com', :password => 'password', :password_confirmation => 'password', :role =>  "doctor" );
User.create(:username => 'Susan', :email => 'susan@example.com', :password => 'password', :password_confirmation => 'password', :role => "doctor" );
User.create(:username => 'Laxmi', :email => 'receptionist@example.com', :password => 'password', :password_confirmation => 'password', :role => "receptionist" );
