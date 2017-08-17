require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new
Money.use_i18n = false

p "Digite el valor a convertir, Ejemplo 1000 USD a COP"
str = gets.chomp.strip

tokens = str.split(' ')
amount = tokens[0].to_f
origin_cur = tokens[1].upcase
target_cur = tokens[3].upcase

currency = Money::Currency.wrap(origin_cur)

money = Money.new(amount * currency.subunit_to_unit, origin_cur)
result = money.exchange_to(target_cur)
p
p "#{money.format} #{origin_cur} = #{result.format} #{target_cur}"
