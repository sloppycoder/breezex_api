# This file should contain all the recordeation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (oreated alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

the_one = Customer.create(rel_id: '11223344', name: 'The One', country: 'SG')
User.create(user_id: 'auth0|1234', name: 'Alibaba', email: 'ali@baba.com', customer: the_one)
current = CasaAccount.create(account_no: '10000011', product_code: 'CASA01', product_desc: 'Super Salary ONE saving account', bal: 1000.20, avail_bal: 888.88, currency: 'SGD', customer: the_one)
saving = CasaAccount.create(account_no: '20000020', product_code: 'CASA02', product_desc: 'Bottomless check current account', bal: 10_000.00, avail_bal: 10_000.00, currency: 'SGD', customer: the_one)
CreditCard.create(account_no: '8432123400008888', product_code: 'VISAINFINTE', product_desc: 'Infinite Visa', bal: 300.00, avail_credit: 9700.00, currency: 'SGD', due_date: '2017-05-30', customer: the_one)

# transaction generated from actual account statement
Transaction.create(trx_date: Date.new(2017, 1, 31), memo: 'TRANSFER WITHDRAWAL NTRF TO CARD 42317988003709', currency: 'SGD', withdrawl_amount: '1040.89'.to_f, deposit_amount: nil, bal: '19305.37 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 24), memo: 'ATM WITHDRAWAL CHARGE CAD 103.00', currency: 'SGD', withdrawl_amount: '5.00'.to_f, deposit_amount: nil, bal: '20346.26 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 24), memo: 'VAN BC ABM OPS-BC OFFSITE CAD CAD 103.00 423179', currency: 'SGD', withdrawl_amount: '114.89'.to_f, deposit_amount: nil, bal: '20351.26 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 21), memo: 'ATM WITHDRAWAL CHARGE JPY 20000', currency: 'SGD', withdrawl_amount: '5.19'.to_f, deposit_amount: nil, bal: '20466.15 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 21), memo: 'CHUO-KU                   JPY JPY 20000 4231798', currency: 'SGD', withdrawl_amount: '259.48'.to_f, deposit_amount: nil, bal: '20471.34 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 21), memo: 'ATM WITHDRAWAL CHARGE JPY 10000', currency: 'SGD', withdrawl_amount: '5.00'.to_f, deposit_amount: nil, bal: '20730.82 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 21), memo: 'SHIBUYA-KU                JPY JPY 10000 4231798', currency: 'SGD', withdrawl_amount: '129.73'.to_f, deposit_amount: nil, bal: '20735.82 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 16), memo: 'SINGTEL-54641416', currency: 'SGD', withdrawl_amount: '60.00'.to_f, deposit_amount: nil, bal: '4845.55 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 13), memo: 'ATM CASH WITHDRAWAL-SCB NCLR SGD 500.00 4231798', currency: 'SGD', withdrawl_amount: '500.00'.to_f, deposit_amount: nil, bal: '4905.55 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 12), memo: 'ATM CASH WITHDRAWAL-SCB NCLR SGD 500.00 4231798', currency: 'SGD', withdrawl_amount: '500.00'.to_f, deposit_amount: nil, bal: '5405.55 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 12), memo: 'NTS-LI XUE TRADING PTE L SGD 50.00 423179880037', currency: 'SGD', withdrawl_amount: '50.00'.to_f, deposit_amount: nil, bal: '5905.55 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 10), memo: 'ATM CASH WITHDRAWAL-SCB NCLR SGD 100.00 4231798', currency: 'SGD', withdrawl_amount: '100.00'.to_f, deposit_amount: nil, bal: '5955.55 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 10), memo: '01/07 TIGERAIR    Q3SM2S SGD 99.00 524355102059', currency: 'SGD', withdrawl_amount: '99.00'.to_f, deposit_amount: nil, bal: '6055.55 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 9), memo: '01/06 UBER BV SGD 13.32 5243551020591473/1/3587', currency: 'SGD', withdrawl_amount: '13.43'.to_f, deposit_amount: nil, bal: '6154.55 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 9), memo: '01/06 UBER BV SGD 4.97 5243551020591473/1/34978', currency: 'SGD', withdrawl_amount: '5.01'.to_f, deposit_amount: nil, bal: '6167.98 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 9), memo: '01/06 SONG FA BAK KUT TEH - SGD 16.32 524355102', currency: 'SGD', withdrawl_amount: '16.32'.to_f, deposit_amount: nil, bal: '6172.99 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 9), memo: '01/06 NTUC FP - KTG VILLAGE SGD 78.25 524355102', currency: 'SGD', withdrawl_amount: '78.25'.to_f, deposit_amount: nil, bal: '6189.31 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 9), memo: '01/05 DELIVEROO COM SG SGD 62.40 52435510205914', currency: 'SGD', withdrawl_amount: '62.40'.to_f, deposit_amount: nil, bal: '6267.56 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 7), memo: 'ATM CASH WDL - ATM5 SGD 1000.00 524355102059147', currency: 'SGD', withdrawl_amount: '1000.00'.to_f, deposit_amount: nil, bal: '6329.96 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 7), memo: '01/05 UBER BV SGD 11.22 5243551020591473/1/3462', currency: 'SGD', withdrawl_amount: '11.31'.to_f, deposit_amount: nil, bal: '7329.96 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 6), memo: '01/04 COMPASS GROUP (SINGAPO SGD 4.30 524355102', currency: 'SGD', withdrawl_amount: '4.30'.to_f, deposit_amount: nil, bal: '10381.27 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 UBER BV SGD 11.73 5243551020591473/1/3088', currency: 'SGD', withdrawl_amount: '11.82'.to_f, deposit_amount: nil, bal: '10385.57 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 NTUC FP - KTG VILLAGE SGD 151.60 52435510', currency: 'SGD', withdrawl_amount: '151.60'.to_f, deposit_amount: nil, bal: '10397.39 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 COMPASS GROUP (SINGAPO SGD 6.80 524355102', currency: 'SGD', withdrawl_amount: '6.80'.to_f, deposit_amount: nil, bal: '10548.99 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 DELIVEROO COM SG SGD 40.99 52435510205914', currency: 'SGD', withdrawl_amount: '40.99'.to_f, deposit_amount: nil, bal: '10555.79 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 SOUP KING - 112 KATONG SGD 6.00 524355102', currency: 'SGD', withdrawl_amount: '6.00'.to_f, deposit_amount: nil, bal: '10596.78 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 KATONG MARKET PLACE SGD 50.10 52435510205', currency: 'SGD', withdrawl_amount: '50.10'.to_f, deposit_amount: nil, bal: '10602.78 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 TIGERAIR    S7SJMJ SGD 99.00 524355102059', currency: 'SGD', withdrawl_amount: '99.00'.to_f, deposit_amount: nil, bal: '10652.88 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 5), memo: '01/03 TIGERAIR    R4J97C SGD 85.00 524355102059', currency: 'SGD', withdrawl_amount: '85.00'.to_f, deposit_amount: nil, bal: '10751.88 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 4), memo: '01/03 NTUC FP - KTG VILLAGE SGD 0.90 5243551020', currency: 'SGD', withdrawl_amount: '0.90'.to_f, deposit_amount: nil, bal: '10836.88 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 4), memo: '01/03 CARVERS & CO SGD 22.00 5243551020591473/1', currency: 'SGD', withdrawl_amount: '22.00'.to_f, deposit_amount: nil, bal: '10837.78 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 4), memo: '01/03 UBER BV SGD 7.64 5243551020591473/1/29345', currency: 'SGD', withdrawl_amount: '7.70'.to_f, deposit_amount: nil, bal: '10859.78 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 4), memo: '12/31 NTUC FP - KTG VILLAGE SGD 52.35 524355102', currency: 'SGD', withdrawl_amount: '52.35'.to_f, deposit_amount: nil, bal: '10867.48 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 3), memo: 'ATM CASH WITHDRAWAL-SCB NCLR SGD 500.00 5243551', currency: 'SGD', withdrawl_amount: '500.00'.to_f, deposit_amount: nil, bal: '10919.83 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 3), memo: 'CASHBACK REWARD    (VALUE DATE: 31/12/2016)', currency: 'SGD', withdrawl_amount: nil, deposit_amount: '19.42'.to_f, bal: '11419.83 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 3), memo: '12/30 UBER BV SGD 5.87 5243551020591473/1/25632', currency: 'SGD', withdrawl_amount: '5.92'.to_f, deposit_amount: nil, bal: '11400.41 CR'.to_f, casa_account:saving)
Transaction.create(trx_date: Date.new(2017, 1, 3), memo: '12/30 COMPASS GROUP (SINGAPO SGD 5.50 524355102', currency: 'SGD', withdrawl_amount: '5.50'.to_f, deposit_amount: nil, bal: '11406.33 CR'.to_f, casa_account:current)
Transaction.create(trx_date: Date.new(2017, 1, 3), memo: '12/27 REDMART*186ORMQM6DE SGD 82.90 52435510205', currency: 'SGD', withdrawl_amount: '82.90'.to_f, deposit_amount: nil, bal: '11411.83 CR'.to_f, casa_account:saving)
