# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

the_one = Customer.create(rel_id: '11223344', name: 'The One', country: 'SG')
User.create(user_id: 'auth0|1234', name: 'Alibaba', email: 'ali@baba.com', customer: the_one)
CasaAccount.create(account_no: '10000011', product_code: 'CASA01', product_desc: 'Super Salary ONE saving account', bal: 1000.20, avail_bal: 888.88, currency: 'SGD', customer: the_one)
CasaAccount.create(account_no: '20000020', product_code: 'CASA02', product_desc: 'Bottomless check current account', bal: 10_000.00, avail_bal: 10_000.00, currency: 'SGD', customer: the_one)
CreditCard.create(account_no: '8432123400008888', product_code: 'VISAINFINTE', product_desc: 'Infinite Visa', bal: 300.00, avail_credit: 9700.00, currency: 'SGD', due_date: '2017-05-30', customer: the_one)
