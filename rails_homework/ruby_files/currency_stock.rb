require "eu_central_bank"
require "stock_quote"

bank = EuCentralBank.new
bank.update_rates
rate = bank.exchange(100, "USD", "KRW")

print "원하는 NASDAQ 주식의 심볼을 입력하세요 : "
input = gets.chomp

#stocks = StockQuote::Stock.quote("amzn, tsla, aapl, fb, googl")
stock = StockQuote::Stock.quote(input)
#puts stock.latest_price

#stocks.each do |stock|
#    puts stock.latest_price
#end

puts "#{stock.company_name}의 가격은 ￦#{stock.latest_price * rate}"