# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all

categories = ['Développement Web & Mobile','User Experience & Ergonomie', 'Salesforce CRM', 'java script', 'ruby on rails', 'postgresql']


categories.each do |category|
	Category.create(title: category)
end