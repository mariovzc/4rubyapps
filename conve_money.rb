require 'money'
require 'money/bank/google_currency'

Money.default_bank = Money::Bank::GoogleCurrency.new
Money.use_i18n = false

p "Bienvenido a Conver currency esta es la forma mas facil de convertir dinero"
p
p "Ejemplos:"
p " 1 BTC a USD "
p " 1 USD a COP "

p "Digite el valor a convertir"
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
