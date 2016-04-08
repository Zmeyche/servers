def convert_to_bgn(price, currency)
  exchange_rate = {usd: 1.72, eur: 1.9557, gbp: 2.43, bgn: 1}
  (price * exchange_rate[currency]).round(2)
end

def compare_prices(first_price, first_currency, second_price, second_currency)
  convert_to_bgn(first_price, first_currency) <=>
  convert_to_bgn(second_price, second_currency)
end

puts "#{convert_to_bgn(1000, :usd)}"
