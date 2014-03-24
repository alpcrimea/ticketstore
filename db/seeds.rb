# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#

[Role,Department,TicketStatus].each {|const|
  title=const.to_s
  YAML.load(ENV[title.pluralize.upcase]).each do |item|
    const.mongo_session[title.downcase.pluralize].insert({ :name => item })
    puts title.downcase+': ' << item
  end
}
puts 'DEFAULT USERS'
user = User.create! :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.email
puts 'pass: ' << user.password
user.add_role :admin
