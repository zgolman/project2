# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beans = Bean.create([{name: "Wilson's Blend", roast: "dark", origin: "Sumatra", quantity: "1.0"}, {name: "Lorin's Light Roast", roast: "light", origin: "Kenya", quantity: "3.75" }])

employers = Employer.create([{income: 1000, pay_period: "10/21/2014", health_insurance: "1", benefits: "0"}, {income: 2000, pay_period: "10/21/2014", health_insurance: "1", benefits: "0"}])



